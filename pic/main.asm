#include <mpasmx.inc>

; CONFIG
; __config 0xFFE8
 __config _IOSCFS_4MHZ & _MCPU_ON & _WDTE_OFF & _CP_OFF & _MCLRE_OFF

res_vect code 0
    goto start

main_prog code
start 
    goto $
    end
