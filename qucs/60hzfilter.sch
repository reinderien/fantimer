<Qucs Schematic 0.0.19>
<Properties>
  <View=0,0,962,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=60hzfilter.dat>
  <DataDisplay=60hzfilter.dpl>
  <OpenDisplay=1>
  <Script=60hzfilter.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Diode D1 1 360 330 -92 -26 0 3 "1e-15 A" 1 "1" 1 "10 fF" 1 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <Diode D2 1 520 330 -92 -26 0 3 "1e-15 A" 1 "1" 1 "10 fF" 1 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <Diode D3 1 360 500 -92 -26 0 3 "1e-15 A" 1 "1" 1 "10 fF" 1 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <Diode D4 1 520 500 -92 -26 0 3 "1e-15 A" 1 "1" 1 "10 fF" 1 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <GND * 1 440 610 0 0 0 0>
  <Vac Vsine 1 440 430 -26 -56 0 2 "5 V" 1 "60Hz" 0 "0" 0 "0" 0>
  <.DC DC1 1 330 70 0 39 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <R R1 1 700 420 15 -26 0 1 "1500 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <.TR TR1 1 490 70 0 63 0 0 "lin" 1 "0" 1 "25 ms" 1 "500" 1 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <C C1 1 850 420 17 -26 0 1 "10uF" 1 "" 0 "neutral" 0>
</Components>
<Wires>
  <360 360 360 430 "" 0 0 0 "">
  <520 360 520 430 "" 0 0 0 "">
  <360 300 520 300 "Vac" 410 270 19 "">
  <360 530 440 530 "" 0 0 0 "">
  <440 530 520 530 "" 0 0 0 "">
  <440 530 440 610 "" 0 0 0 "">
  <520 430 520 470 "" 0 0 0 "">
  <470 430 520 430 "" 0 0 0 "">
  <360 430 360 470 "" 0 0 0 "">
  <360 430 410 430 "" 0 0 0 "">
  <700 450 700 530 "" 0 0 0 "">
  <520 530 700 530 "" 0 0 0 "">
  <700 300 700 390 "" 0 0 0 "">
  <520 300 700 300 "" 0 0 0 "">
  <850 300 850 390 "" 0 0 0 "">
  <700 300 850 300 "" 0 0 0 "">
  <850 450 850 530 "" 0 0 0 "">
  <700 530 850 530 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>