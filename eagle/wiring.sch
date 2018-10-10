<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.2.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="switch-omron" urn="urn:adsk.eagle:library:377">
<description>&lt;b&gt;Omron Switches&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="B3F-31XX" urn="urn:adsk.eagle:footprint:27478/1" library_version="1">
<description>&lt;b&gt;OMRON SWITCH&lt;/b&gt;</description>
<wire x1="3.683" y1="2.667" x2="3.683" y2="0" width="0.1524" layer="51"/>
<wire x1="3.683" y1="0" x2="3.683" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-3.556" x2="2.54" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="0" x2="-3.683" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="0" x2="-3.683" y2="2.667" width="0.1524" layer="51"/>
<wire x1="-3.683" y1="2.667" x2="-3.429" y2="2.667" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="2.667" x2="-3.429" y2="0" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="-3.302" x2="-0.635" y2="-3.302" width="0.1524" layer="21"/>
<wire x1="3.429" y1="0" x2="3.429" y2="2.667" width="0.1524" layer="51"/>
<wire x1="3.429" y1="2.667" x2="3.683" y2="2.667" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-3.556" x2="-2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-3.81" x2="-1.27" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-3.556" x2="2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-3.556" x2="-3.683" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-3.81" x2="-1.27" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-3.81" x2="1.27" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-4.191" x2="1.27" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-3.81" x2="1.27" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-3.81" x2="2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-3.302" x2="-0.635" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-3.302" x2="0.635" y2="-3.302" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.286" x2="0.635" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-3.302" x2="0.635" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-3.302" x2="3.429" y2="-3.302" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="0" x2="-2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0.254" x2="-2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0.254" x2="-1.905" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="0" x2="-1.905" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="0" x2="-0.762" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.254" x2="-0.762" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.254" x2="0.762" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0" x2="0.762" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0" x2="1.778" y2="0" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0" x2="1.778" y2="0.254" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.254" x2="2.667" y2="0.254" width="0.1524" layer="21"/>
<wire x1="2.667" y1="0" x2="2.667" y2="0.254" width="0.1524" layer="21"/>
<wire x1="2.667" y1="0" x2="3.429" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="-0.889" x2="-0.762" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="-0.889" x2="0.508" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="0.508" y1="-0.889" x2="1.651" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="0" y1="-1.27" x2="0" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-1.651" x2="0" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="0" y1="-1.651" x2="0.254" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="-0.508" x2="-3.429" y2="-2.032" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="-0.508" x2="-3.429" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.032" x2="-3.429" y2="-3.302" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-2.032" x2="3.429" y2="-3.302" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-0.508" x2="3.429" y2="-2.032" width="0.1524" layer="51"/>
<wire x1="3.429" y1="-0.508" x2="3.429" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-2.2606" y="-1.2446" drill="1.016" shape="octagon"/>
<pad name="2" x="2.2606" y="-1.2446" drill="1.016" shape="octagon"/>
<pad name="3" x="-3.5052" y="1.2446" drill="1.4986" diameter="2.159"/>
<pad name="4" x="3.5052" y="1.2446" drill="1.4986" diameter="2.159"/>
<text x="-2.54" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.683" y="-5.969" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="B3F-31XX" urn="urn:adsk.eagle:package:27487/1" type="box" library_version="1">
<description>OMRON SWITCH</description>
<packageinstances>
<packageinstance name="B3F-31XX"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="TS" urn="urn:adsk.eagle:symbol:27477/1" library_version="1">
<wire x1="0" y1="-3.175" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="3.175" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-0.635" y2="0" width="0.254" layer="94"/>
<wire x1="-4.445" y1="1.905" x2="-3.175" y2="1.905" width="0.254" layer="94"/>
<wire x1="-4.445" y1="-1.905" x2="-3.175" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-4.445" y1="1.905" x2="-4.445" y2="0" width="0.254" layer="94"/>
<wire x1="-4.445" y1="0" x2="-4.445" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.905" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0" x2="-0.635" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.635" y1="0" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="-4.445" y1="0" x2="-3.175" y2="0" width="0.1524" layer="94"/>
<text x="-6.35" y="-1.905" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="-3.81" y="3.175" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="P" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="S" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="31-XX" urn="urn:adsk.eagle:component:27493/1" prefix="S" uservalue="yes" library_version="1">
<description>&lt;b&gt;OMRON SWITCH&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="TS" x="0" y="0"/>
</gates>
<devices>
<device name="" package="B3F-31XX">
<connects>
<connect gate="1" pin="P" pad="1"/>
<connect gate="1" pin="S" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27487/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="B3F-3100" constant="no"/>
<attribute name="OC_FARNELL" value="959704" constant="no"/>
<attribute name="OC_NEWARK" value="36M3582" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2" urn="urn:adsk.eagle:library:372">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="PE" urn="urn:adsk.eagle:symbol:26992/1" library_version="2">
<wire x1="-1.27" y1="-0.762" x2="1.27" y2="-0.762" width="0.254" layer="94"/>
<wire x1="-0.635" y1="-1.524" x2="0.635" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-4.445" y="-4.699" size="1.778" layer="96">&gt;VALUE</text>
<pin name="PE" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PE" urn="urn:adsk.eagle:component:27038/1" prefix="SUPPLY" library_version="2">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="PE" symbol="PE" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ir" urn="urn:adsk.eagle:library:248">
<description>&lt;b&gt;IR&lt;/b&gt; International Rectifier&lt;p&gt;
www.irf.com</description>
<packages>
<package name="CFL-LAMP" urn="urn:adsk.eagle:footprint:15347/1" library_version="1">
<description>&lt;b&gt;fluorescent lamp&lt;/b&gt;</description>
<wire x1="-7.62" y1="1.27" x2="-7.62" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="6.35" x2="-5.08" y2="6.35" width="0.1524" layer="21" curve="-143.124689"/>
<wire x1="-5.08" y1="6.35" x2="-5.08" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="6.35" width="0.1524" layer="21"/>
<wire x1="5.08" y1="6.35" x2="7.62" y2="6.35" width="0.1524" layer="21" curve="-143.132809"/>
<wire x1="7.62" y1="6.35" x2="7.62" y2="1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="8.255" x2="8.255" y2="5.715" width="0.1524" layer="21"/>
<wire x1="8.255" y1="5.715" x2="-8.255" y2="5.715" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="5.715" x2="-8.255" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="8.255" x2="8.255" y2="8.255" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1" diameter="1.6"/>
<pad name="2" x="-5.08" y="0" drill="1" diameter="1.6"/>
<pad name="3" x="5.08" y="0" drill="1" diameter="1.6"/>
<pad name="4" x="7.62" y="0" drill="1" diameter="1.6"/>
<text x="-4.445" y="6.35" size="1.27" layer="21" font="vector">CFL-Lamp</text>
<text x="-7.62" y="8.89" size="1.778" layer="25">&gt;NAME</text>
<text x="1.27" y="8.89" size="1.778" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="CFL-LAMP" urn="urn:adsk.eagle:package:15358/1" type="box" library_version="1">
<description>fluorescent lamp</description>
<packageinstances>
<packageinstance name="CFL-LAMP"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="CFL-LAMP" urn="urn:adsk.eagle:symbol:15346/1" library_version="1">
<wire x1="-4.572" y1="-4.445" x2="-4.572" y2="-0.127" width="0.254" layer="94"/>
<wire x1="-4.572" y1="-0.127" x2="4.699" y2="-2.159" width="0.254" layer="94"/>
<wire x1="4.699" y1="-2.159" x2="4.953" y2="-2.032" width="0.254" layer="94" curve="77.797447"/>
<wire x1="4.953" y1="-2.032" x2="4.953" y2="-0.381" width="0.254" layer="94"/>
<wire x1="4.953" y1="-0.381" x2="4.826" y2="-0.127" width="0.254" layer="94" curve="53.130102"/>
<wire x1="4.826" y1="-0.127" x2="-4.445" y2="2.032" width="0.254" layer="94"/>
<wire x1="-4.445" y1="2.032" x2="-4.826" y2="1.778" width="0.254" layer="94" curve="93.69322"/>
<wire x1="-4.826" y1="1.778" x2="-4.826" y2="0.254" width="0.254" layer="94"/>
<wire x1="-4.826" y1="0.254" x2="-4.572" y2="-0.127" width="0.254" layer="94" curve="67.370882"/>
<wire x1="-4.572" y1="2.667" x2="4.699" y2="0.635" width="0.254" layer="94"/>
<wire x1="4.699" y1="0.635" x2="4.953" y2="0.762" width="0.254" layer="94" curve="77.797447"/>
<wire x1="4.953" y1="0.762" x2="4.953" y2="2.413" width="0.254" layer="94"/>
<wire x1="4.953" y1="2.413" x2="4.826" y2="2.667" width="0.254" layer="94" curve="53.130102"/>
<wire x1="4.826" y1="2.667" x2="-4.445" y2="4.826" width="0.254" layer="94"/>
<wire x1="-4.445" y1="4.826" x2="-4.826" y2="4.572" width="0.254" layer="94" curve="93.725242"/>
<wire x1="-4.826" y1="4.572" x2="-4.826" y2="3.048" width="0.254" layer="94"/>
<wire x1="-4.826" y1="3.048" x2="-4.572" y2="2.667" width="0.254" layer="94" curve="67.370882"/>
<wire x1="-4.572" y1="5.334" x2="4.699" y2="3.302" width="0.254" layer="94"/>
<wire x1="4.699" y1="3.302" x2="4.953" y2="3.429" width="0.254" layer="94" curve="77.797447"/>
<wire x1="4.953" y1="3.429" x2="4.953" y2="5.08" width="0.254" layer="94"/>
<wire x1="4.953" y1="5.08" x2="4.826" y2="5.334" width="0.254" layer="94" curve="53.130102"/>
<wire x1="4.826" y1="5.334" x2="-4.445" y2="7.493" width="0.254" layer="94"/>
<wire x1="-4.445" y1="7.493" x2="-4.826" y2="7.239" width="0.254" layer="94" curve="93.725242"/>
<wire x1="-4.826" y1="7.239" x2="-4.826" y2="5.715" width="0.254" layer="94"/>
<wire x1="-4.826" y1="5.715" x2="-4.572" y2="5.334" width="0.254" layer="94" curve="67.370882"/>
<wire x1="-1.016" y1="7.239" x2="4.699" y2="5.969" width="0.254" layer="94"/>
<wire x1="4.699" y1="5.969" x2="4.953" y2="6.096" width="0.254" layer="94" curve="77.797447"/>
<wire x1="4.953" y1="6.096" x2="4.953" y2="7.747" width="0.254" layer="94"/>
<wire x1="4.953" y1="7.747" x2="4.826" y2="8.001" width="0.254" layer="94" curve="53.130102"/>
<wire x1="4.826" y1="8.001" x2="-1.016" y2="9.398" width="0.254" layer="94"/>
<wire x1="-1.016" y1="9.398" x2="3.556" y2="9.144" width="0.254" layer="94"/>
<wire x1="3.556" y1="9.144" x2="3.81" y2="8.255" width="0.254" layer="94"/>
<wire x1="-1.016" y1="9.271" x2="-1.016" y2="7.366" width="0.254" layer="94"/>
<wire x1="-0.889" y1="6.731" x2="-0.381" y2="6.985" width="0.254" layer="94"/>
<wire x1="0" y1="6.477" x2="0.508" y2="6.731" width="0.254" layer="94"/>
<wire x1="-4.572" y1="7.493" x2="-1.143" y2="8.89" width="0.254" layer="94"/>
<wire x1="-4.572" y1="4.826" x2="-3.937" y2="5.08" width="0.254" layer="94"/>
<wire x1="-4.572" y1="2.032" x2="-3.81" y2="2.413" width="0.254" layer="94"/>
<wire x1="-0.762" y1="3.937" x2="0" y2="4.191" width="0.254" layer="94"/>
<wire x1="0.254" y1="3.81" x2="0.889" y2="4.064" width="0.254" layer="94"/>
<wire x1="-0.889" y1="1.27" x2="-0.127" y2="1.651" width="0.254" layer="94"/>
<wire x1="-0.127" y1="1.016" x2="0.635" y2="1.397" width="0.254" layer="94"/>
<wire x1="-0.254" y1="-1.143" x2="-2.286" y2="-2.032" width="0.254" layer="94"/>
<wire x1="-2.286" y1="-2.032" x2="-2.286" y2="-4.445" width="0.254" layer="94"/>
<wire x1="-2.286" y1="-4.445" x2="-4.572" y2="-4.445" width="0.254" layer="94" curve="-73.739795"/>
<wire x1="4.699" y1="-2.159" x2="4.699" y2="-4.445" width="0.254" layer="94"/>
<wire x1="4.699" y1="-4.445" x2="2.413" y2="-4.445" width="0.254" layer="94" curve="-50.692352"/>
<wire x1="2.413" y1="-4.445" x2="2.413" y2="-1.778" width="0.254" layer="94"/>
<wire x1="4.699" y1="0.635" x2="3.683" y2="0.254" width="0.254" layer="94"/>
<wire x1="4.699" y1="3.302" x2="3.81" y2="2.921" width="0.254" layer="94"/>
<wire x1="4.699" y1="5.969" x2="3.81" y2="5.588" width="0.254" layer="94"/>
<wire x1="-4.445" y1="-5.08" x2="-2.54" y2="-5.08" width="0.1524" layer="94" curve="-187.62815"/>
<wire x1="-5.08" y1="-5.08" x2="-4.445" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="4.572" y2="-5.08" width="0.1524" layer="94" curve="-180"/>
<wire x1="4.572" y1="-5.08" x2="5.08" y2="-5.08" width="0.1524" layer="94"/>
<text x="-5.08" y="12.7" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-7.62" y="-5.08" visible="off" length="short" direction="pas"/>
<pin name="2" x="7.62" y="-5.08" visible="off" length="short" direction="pas" rot="R180"/>
<pin name="3" x="-2.54" y="-7.62" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="4" x="2.54" y="-7.62" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CFL-LAMP" urn="urn:adsk.eagle:component:15363/1" prefix="XL" library_version="1">
<description>&lt;b&gt;fluorescent lamp&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="CFL-LAMP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CFL-LAMP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15358/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="SWITCH" library="switch-omron" library_urn="urn:adsk.eagle:library:377" deviceset="31-XX" device="" package3d_urn="urn:adsk.eagle:package:27487/1"/>
<part name="SUPPLY1" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="PE" device=""/>
<part name="SUPPLY2" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="PE" device=""/>
<part name="LIGHT" library="ir" library_urn="urn:adsk.eagle:library:248" deviceset="CFL-LAMP" device="" package3d_urn="urn:adsk.eagle:package:15358/1"/>
<part name="SUPPLY3" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="PE" device=""/>
<part name="SUPPLY4" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="PE" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="22.86" y="2.54" size="1.778" layer="95">Box</text>
<wire x1="15.24" y1="39.37" x2="15.24" y2="21.59" width="0.1524" layer="94" style="shortdash"/>
<wire x1="15.24" y1="21.59" x2="31.75" y2="21.59" width="0.1524" layer="94" style="shortdash"/>
<wire x1="31.75" y1="21.59" x2="31.75" y2="39.37" width="0.1524" layer="94" style="shortdash"/>
<wire x1="31.75" y1="39.37" x2="15.24" y2="39.37" width="0.1524" layer="94" style="shortdash"/>
<text x="62.23" y="15.24" size="1.778" layer="95">TIMER</text>
<wire x1="58.42" y1="21.59" x2="58.42" y2="7.62" width="0.1524" layer="94" style="shortdash"/>
<wire x1="72.39" y1="7.62" x2="72.39" y2="21.59" width="0.1524" layer="94" style="shortdash"/>
<wire x1="72.39" y1="21.59" x2="58.42" y2="21.59" width="0.1524" layer="94" style="shortdash"/>
<wire x1="72.39" y1="7.62" x2="58.42" y2="7.62" width="0.1524" layer="94" style="shortdash"/>
<text x="73.66" y="50.8" size="1.778" layer="95">FAN</text>
<wire x1="71.12" y1="49.53" x2="71.12" y2="40.64" width="0.1524" layer="94"/>
<wire x1="71.12" y1="40.64" x2="80.01" y2="49.53" width="0.1524" layer="94"/>
<wire x1="80.01" y1="49.53" x2="80.01" y2="40.64" width="0.1524" layer="94"/>
<wire x1="80.01" y1="40.64" x2="71.12" y2="49.53" width="0.1524" layer="94"/>
<wire x1="43.18" y1="63.5" x2="43.18" y2="35.56" width="0.1524" layer="94" style="shortdash"/>
<wire x1="43.18" y1="63.5" x2="64.77" y2="63.5" width="0.1524" layer="94" style="shortdash"/>
<wire x1="64.77" y1="63.5" x2="64.77" y2="35.56" width="0.1524" layer="94" style="shortdash"/>
<wire x1="64.77" y1="35.56" x2="43.18" y2="35.56" width="0.1524" layer="94" style="shortdash"/>
<wire x1="67.31" y1="54.61" x2="67.31" y2="29.21" width="0.1524" layer="94" style="shortdash"/>
<wire x1="67.31" y1="29.21" x2="83.82" y2="29.21" width="0.1524" layer="94" style="shortdash"/>
<wire x1="83.82" y1="29.21" x2="83.82" y2="54.61" width="0.1524" layer="94" style="shortdash"/>
<wire x1="83.82" y1="54.61" x2="67.31" y2="54.61" width="0.1524" layer="94" style="shortdash"/>
<text x="-3.81" y="12.7" size="1.778" layer="97">To panel</text>
<wire x1="0" y1="10.16" x2="-3.81" y2="10.16" width="0.1524" layer="97"/>
<wire x1="-3.81" y1="10.16" x2="-2.54" y2="11.43" width="0.1524" layer="97"/>
<wire x1="-3.81" y1="10.16" x2="-2.54" y2="8.89" width="0.1524" layer="97"/>
</plain>
<instances>
<instance part="SWITCH" gate="1" x="23.622" y="29.21" rot="R270">
<attribute name="NAME" x="18.669" y="35.56" size="1.778" layer="95"/>
<attribute name="VALUE" x="26.797" y="33.02" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY1" gate="PE" x="24.13" y="19.05"/>
<instance part="SUPPLY2" gate="PE" x="20.32" y="1.27"/>
<instance part="LIGHT" gate="G$1" x="54.61" y="48.26">
<attribute name="NAME" x="50.8" y="59.69" size="1.778" layer="95"/>
</instance>
<instance part="SUPPLY3" gate="PE" x="54.61" y="33.02"/>
<instance part="SUPPLY4" gate="PE" x="76.2" y="26.67"/>
</instances>
<busses>
</busses>
<nets>
<net name="AC/L" class="0">
<segment>
<wire x1="7.62" y1="15.24" x2="17.78" y2="15.24" width="0.1524" layer="91"/>
<junction x="7.62" y="15.24"/>
<label x="8.89" y="15.748" size="1.778" layer="95"/>
<pinref part="SWITCH" gate="1" pin="P"/>
<wire x1="18.542" y1="29.21" x2="17.78" y2="29.21" width="0.1524" layer="91"/>
<wire x1="17.78" y1="29.21" x2="17.78" y2="15.24" width="0.1524" layer="91"/>
<junction x="17.78" y="15.24"/>
<wire x1="17.78" y1="15.24" x2="59.69" y2="15.24" width="0.1524" layer="91"/>
<junction x="59.69" y="15.24"/>
</segment>
</net>
<net name="AC/N" class="0">
<segment>
<wire x1="7.62" y1="11.43" x2="52.07" y2="11.43" width="0.1524" layer="91"/>
<junction x="7.62" y="11.43"/>
<label x="8.89" y="11.938" size="1.778" layer="95"/>
<junction x="59.69" y="11.43"/>
<pinref part="LIGHT" gate="G$1" pin="3"/>
<wire x1="52.07" y1="11.43" x2="59.69" y2="11.43" width="0.1524" layer="91"/>
<junction x="52.07" y="11.43"/>
<wire x1="52.07" y1="40.64" x2="52.07" y2="24.13" width="0.1524" layer="91"/>
<wire x1="52.07" y1="24.13" x2="52.07" y2="11.43" width="0.1524" layer="91"/>
<wire x1="73.66" y1="39.37" x2="73.66" y2="24.13" width="0.1524" layer="91"/>
<wire x1="73.66" y1="24.13" x2="52.07" y2="24.13" width="0.1524" layer="91"/>
<junction x="52.07" y="24.13"/>
<junction x="73.66" y="39.37"/>
</segment>
</net>
<net name="LIVE_LIGHT" class="0">
<segment>
<pinref part="SWITCH" gate="1" pin="S"/>
<wire x1="28.702" y1="29.21" x2="57.15" y2="29.21" width="0.1524" layer="91"/>
<wire x1="57.15" y1="29.21" x2="57.15" y2="19.05" width="0.1524" layer="91"/>
<wire x1="57.15" y1="19.05" x2="59.69" y2="19.05" width="0.1524" layer="91"/>
<junction x="59.69" y="19.05"/>
<pinref part="LIGHT" gate="G$1" pin="4"/>
<wire x1="57.15" y1="40.64" x2="57.15" y2="29.21" width="0.1524" layer="91"/>
<junction x="57.15" y="29.21"/>
<label x="32.512" y="29.972" size="1.778" layer="95"/>
</segment>
</net>
<net name="EARTH" class="0">
<segment>
<pinref part="SUPPLY4" gate="PE" pin="PE"/>
<wire x1="76.2" y1="29.21" x2="76.2" y2="31.75" width="0.1524" layer="91"/>
<pinref part="SUPPLY2" gate="PE" pin="PE"/>
<wire x1="7.62" y1="7.62" x2="20.32" y2="7.62" width="0.1524" layer="91"/>
<junction x="7.62" y="7.62"/>
<label x="8.89" y="8.128" size="1.778" layer="95"/>
<wire x1="20.32" y1="3.81" x2="20.32" y2="7.62" width="0.1524" layer="91"/>
<junction x="20.32" y="7.62"/>
<pinref part="SUPPLY1" gate="PE" pin="PE"/>
<wire x1="24.13" y1="21.59" x2="24.13" y2="24.13" width="0.1524" layer="91"/>
<wire x1="24.13" y1="24.13" x2="20.32" y2="24.13" width="0.1524" layer="91"/>
<wire x1="20.32" y1="24.13" x2="20.32" y2="7.62" width="0.1524" layer="91"/>
<junction x="20.32" y="7.62"/>
<wire x1="20.32" y1="7.62" x2="49.53" y2="7.62" width="0.1524" layer="91"/>
<wire x1="49.53" y1="7.62" x2="49.53" y2="26.67" width="0.1524" layer="91"/>
<pinref part="SUPPLY3" gate="PE" pin="PE"/>
<wire x1="49.53" y1="26.67" x2="49.53" y2="38.1" width="0.1524" layer="91"/>
<wire x1="49.53" y1="38.1" x2="54.61" y2="38.1" width="0.1524" layer="91"/>
<wire x1="54.61" y1="38.1" x2="54.61" y2="35.56" width="0.1524" layer="91"/>
<wire x1="76.2" y1="31.75" x2="71.12" y2="31.75" width="0.1524" layer="91"/>
<wire x1="71.12" y1="31.75" x2="71.12" y2="26.67" width="0.1524" layer="91"/>
<wire x1="71.12" y1="26.67" x2="49.53" y2="26.67" width="0.1524" layer="91"/>
<junction x="49.53" y="26.67"/>
<junction x="54.61" y="35.56"/>
<junction x="76.2" y="29.21"/>
<junction x="24.13" y="21.59"/>
</segment>
</net>
<net name="LIVE_FAN" class="0">
<segment>
<wire x1="71.12" y1="19.05" x2="78.74" y2="19.05" width="0.1524" layer="91"/>
<wire x1="78.74" y1="19.05" x2="78.74" y2="39.37" width="0.1524" layer="91"/>
<junction x="78.74" y="39.37"/>
<junction x="71.12" y="19.05"/>
<label x="73.66" y="16.51" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
