#include <mpasmx.inc>
    
    list
    
GP_LIGHT equ GP1
GP_FAN   equ GP2

; Config:
    ; 4MHZ internal RC osc
    ; pullup enabled on GP3 (has no effect due to MCLRE)
    ; watchdog timer disabled
    ; code protection off
    ; GPIO on MCLR pin so that reset line is tied to Vdd
    __config _IOSCFS_4MHZ & _MCPU_ON & _WDTE_OFF & _CP_OFF & _MCLRE_OFF

    udata
post res 2 ; 16-bit software postscaler
    
res_vect code 0
    ; Setup --------------------------------------------------------------------
    ; We get here on powerup, any kind of reset, or wakeup-from-sleep.
    
    ; First: PC starts at the end of memory, containing MOVLW <factory osccal>
    ; but only if it's a power-on-reset
    btfsc STATUS, GPWUF  ; wakeup must be clear (no wakeup)
    goto cal_done
    btfss STATUS, NOT_TO ; !TO must be high (no WDT timeout)
    goto cal_done
    btfss STATUS, NOT_PD ; !PD must be high (no sleep)
    goto cal_done
    movwf OSCCAL         ; If these are all true, it was a POR; move W into OSCCAL
    bcf OSCCAL, FOSC4    ; Disable osc output; enable digital I/O on GP2
cal_done:
    
    ; GP0: analog in - time adj (ANS0=1)
    ; GP1: digital in, WPU - !light (ANS1=0)
    ; GP2: digital out - fan (FOSC4=0, T0CS=0)
    
    ; !GPWU=0: enable wakeup on pin change 
    ; !GPPU=0: enable weak pullup on GP0,1,3
    ; T0CS=0: timer 0 internally clocked
    ; T0SE=0: ignored
    ; PSA=0: prescaler assigned to timer 0
    ; PS=111: 1:256 prescaler
    movlw b'111'
    option
    
    ; ANS1=0: GP1 digital
    ; ANS0=1: GP0 analog in
    ; CHS=00: channel GP0/AN0
    ; GO=0: not converting yet
    ; ADON=1: ADC is enabled
    movlw b'01000001'
    movwf ADCON0
    
    ; We can write to the fan port latch even if it's still in input mode;
    ; this ensures no glitch between clearing TRIS and sending the fan output.
    ; (but this doesn't work in the simulator)
    btfsc GPIO, GP_LIGHT  ; Check light status (negative logic)
    goto light_off
light_on:            ; if it's clear, the light's on
    bsf GPIO, GP_FAN ; turn fan on
    goto fan_done
light_off:           ; if it's set, the light's off
    bcf GPIO, GP_FAN ; turn fan off (we'll go to sleep in a bit)
fan_done:
    
    movlw b'1011'    ; only GP2 output, others input
    tris GPIO
    
    ; Pin change logic ---------------------------------------------------------

    ; If the light is off, go to sleep. When a pin changes, the MCU will reset
    ; and TRIS will be temporarily reset to all inputs, but that's fine because
    ; we have a pulldown and output should be low anyway. (The light is logic-
    ; low.)
    btfsc GPIO, GP_LIGHT ; If the light is on (negative logic), don't sleep
    sleep                ; The light is off, so sleep

wait_fanoff:
    bsf GPIO, GP_FAN     ; The light is on (GP1==0), so turn the fan on.
    btfss GPIO, GP_LIGHT ; Until the light is off (negative logic)
    goto $-1             ; spin.
    
    ; Adjust -------------------------------------------------------------------
    
    ; For the 4.7k pot, worst-case Rs is (4.7k/2)||(4.7k/2) = 1175
    ; Tacq = Tamp + Tc + Tcoff
    ;      = 2us + (25pF)(1k + 7k + 1175)*9ln2 + 0
    ;      = 3.4us
    ; Assume that, after all this time waiting for the light, that's been
    ; reached a million times over.
    
    bsf ADCON0, NOT_DONE   ; Start conversion
    btfsc ADCON0, NOT_DONE ; Done waiting if conversion is done
    goto $-1               ; Keep waiting
    movf ADRES, W          ; Copy ADC result
    movwf post+1           ; to upper postscale byte
    
    ; Timer --------------------------------------------------------------------
    
    clrf TMR0 ; The timer is already running; clear it
    clrf post+0 ; Clear lower soft postscaler
    
    ; 1:256 prescaler, 8 bit, uses 4MHz/4
    ;     pre tm0 po1 po2 fosc/4
    ; t = 256*256*256*x  *4/4MHz = 17s - 72m
    
tmr0_loop:
    ; Wait until after we've passed 0
    movf TMR0, W    ; Check TMR0
    btfsc STATUS, Z ; If it's not 0, stop comparing
    goto $-2        ; keep comparing
    
    ; Wait for timer overflow
    btfss GPIO, GP_LIGHT ; Check if the light turned on while we were waiting
    goto wait_fanoff     ; If so, abort wait
    movf TMR0, W         ; Check TMR0
    btfss STATUS, Z      ; If it's zero, stop comparing
    goto $-4             ; keep comparing
    
    decfsz post, f   ; Decrement lower postscale
    goto tmr0_loop   ; Wait some more if no overflow
    
    decfsz post+1, f ; Decrement upper postscale (use ADRES)
    goto tmr0_loop   ; Wait some more if not expired
    
    ; Fan off ------------------------------------------------------------------
    
    bcf GPIO, GP_FAN ; Turn the fan off
    sleep            ; Sleep until light comes on again
    
    end
