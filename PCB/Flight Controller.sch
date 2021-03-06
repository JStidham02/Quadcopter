<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
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
<library name="ubloxLib" urn="urn:adsk.eagle:library:35818950">
<description>Imported from Altium Designer&amp;reg; library: ubloxLib.IntLib</description>
<packages>
<package name="NINA_LGA71R_1500X1000X223_PCB" urn="urn:adsk.eagle:footprint:35819039/1" library_version="1">
<circle x="-5.7" y="-5.5" radius="0.1" width="0.254" layer="21"/>
<smd name="37" x="1.25" y="2.75" dx="0.7" dy="0.7" layer="1"/>
<smd name="36" x="1.25" y="-2.75" dx="0.7" dy="0.7" layer="1"/>
<smd name="55" x="-6.85" y="-4" dx="0.7" dy="0.7" layer="1"/>
<smd name="54" x="-6.85" y="-3.000003125" dx="0.7" dy="0.7" layer="1"/>
<smd name="53" x="-6.85" y="-2" dx="0.7" dy="0.7" layer="1"/>
<smd name="52" x="-6.85" y="-1" dx="0.7" dy="0.7" layer="1"/>
<smd name="51" x="-6.85" y="0" dx="0.7" dy="0.7" layer="1"/>
<smd name="50" x="-6.85" y="1" dx="0.7" dy="0.7" layer="1"/>
<smd name="49" x="-6.85" y="2" dx="0.7" dy="0.7" layer="1"/>
<smd name="48" x="-6.85" y="3" dx="0.7" dy="0.7" layer="1"/>
<smd name="47" x="-6.85" y="4" dx="0.7" dy="0.7" layer="1"/>
<smd name="46" x="-4.250003125" y="-1.650003125" dx="0.7" dy="0.7" layer="1"/>
<smd name="45" x="-4.250003125" y="-0.55" dx="0.7" dy="0.7" layer="1"/>
<smd name="44" x="-4.250003125" y="0.55" dx="0.7" dy="0.7" layer="1"/>
<smd name="43" x="-4.250003125" y="1.65" dx="0.7" dy="0.7" layer="1"/>
<smd name="42" x="-4.250003125" y="2.75" dx="0.7" dy="0.7" layer="1"/>
<smd name="41" x="-3.15" y="2.75" dx="0.7" dy="0.7" layer="1"/>
<smd name="40" x="-2.05" y="2.75" dx="0.7" dy="0.7" layer="1"/>
<smd name="39" x="-0.95" y="2.75" dx="0.7" dy="0.7" layer="1"/>
<smd name="38" x="0.15" y="2.75" dx="0.7" dy="0.7" layer="1"/>
<smd name="35" x="0.15" y="-2.75" dx="0.7" dy="0.7" layer="1"/>
<smd name="34" x="-0.95" y="-2.75" dx="0.7" dy="0.7" layer="1"/>
<smd name="33" x="-2.05" y="-2.75" dx="0.7" dy="0.7" layer="1"/>
<smd name="32" x="-3.15" y="-2.75" dx="0.7" dy="0.7" layer="1"/>
<smd name="31" x="-4.250003125" y="-2.75" dx="0.7" dy="0.7" layer="1"/>
<smd name="57" x="-2.925" y="0.575" dx="0.7" dy="0.7" layer="1" rot="R90"/>
<smd name="60" x="-1.775" y="0.575" dx="0.7" dy="0.7" layer="1" rot="R90"/>
<smd name="59" x="-1.775" y="-0.575" dx="0.7" dy="0.7" layer="1" rot="R90"/>
<smd name="58" x="-1.775" y="-1.725" dx="0.7" dy="0.7" layer="1" rot="R90"/>
<smd name="56" x="-2.925" y="-0.575" dx="0.7" dy="0.7" layer="1" rot="R90"/>
<smd name="62" x="-0.625" y="-0.575" dx="0.7" dy="0.7" layer="1" rot="R90"/>
<smd name="63" x="-0.625" y="0.575" dx="0.7" dy="0.7" layer="1" rot="R90"/>
<smd name="61" x="-1.775" y="1.725" dx="0.7" dy="0.7" layer="1" rot="R90"/>
<smd name="67" x="0.525" y="1.725" dx="0.7" dy="0.7" layer="1" rot="R90"/>
<smd name="66" x="0.525" y="0.575" dx="0.7" dy="0.7" layer="1" rot="R90"/>
<smd name="65" x="0.525" y="-0.575" dx="0.7" dy="0.7" layer="1" rot="R90"/>
<smd name="64" x="0.525" y="-1.725" dx="0.7" dy="0.7" layer="1" rot="R90"/>
<smd name="26" x="-5.625" y="2" dx="1.15" dy="0.7" layer="1"/>
<smd name="27" x="-5.625" y="0.999996875" dx="1.15" dy="0.7" layer="1"/>
<smd name="28" x="-5.625" y="-0.000003125" dx="1.15" dy="0.7" layer="1"/>
<smd name="29" x="-5.625" y="-1" dx="1.15" dy="0.7" layer="1"/>
<smd name="30" x="-5.625" y="-2" dx="1.15" dy="0.7" layer="1"/>
<smd name="11" x="3.225" y="-2" dx="1.15" dy="0.7" layer="1"/>
<smd name="12" x="3.225" y="-1" dx="1.15" dy="0.7" layer="1"/>
<smd name="13" x="3.225" y="-0.000003125" dx="1.15" dy="0.7" layer="1"/>
<smd name="14" x="3.225" y="0.999996875" dx="1.15" dy="0.7" layer="1"/>
<smd name="15" x="3.225" y="2" dx="1.15" dy="0.7" layer="1"/>
<smd name="25" x="-5.7" y="4.125" dx="1.15" dy="0.7" layer="1" rot="R90"/>
<smd name="24" x="-4.7" y="4.125" dx="1.15" dy="0.7" layer="1" rot="R90"/>
<smd name="23" x="-3.7" y="4.125" dx="1.15" dy="0.7" layer="1" rot="R90"/>
<smd name="22" x="-2.7" y="4.125" dx="1.15" dy="0.7" layer="1" rot="R90"/>
<smd name="21" x="-1.700003125" y="4.125" dx="1.15" dy="0.7" layer="1" rot="R90"/>
<smd name="20" x="-0.7" y="4.125" dx="1.15" dy="0.7" layer="1" rot="R90"/>
<smd name="19" x="0.3" y="4.125" dx="1.15" dy="0.7" layer="1" rot="R90"/>
<smd name="18" x="1.3" y="4.125" dx="1.15" dy="0.7" layer="1" rot="R90"/>
<smd name="17" x="2.3" y="4.125" dx="1.15" dy="0.7" layer="1" rot="R90"/>
<smd name="16" x="3.3" y="4.125" dx="1.15" dy="0.7" layer="1" rot="R90"/>
<smd name="10" x="3.3" y="-4.125" dx="1.15" dy="0.7" layer="1" rot="R90"/>
<smd name="9" x="2.3" y="-4.125" dx="1.15" dy="0.7" layer="1" rot="R90"/>
<smd name="8" x="1.3" y="-4.125" dx="1.15" dy="0.7" layer="1" rot="R90"/>
<smd name="7" x="0.3" y="-4.125" dx="1.15" dy="0.7" layer="1" rot="R90"/>
<smd name="6" x="-0.7" y="-4.125" dx="1.15" dy="0.7" layer="1" rot="R90"/>
<smd name="5" x="-1.700003125" y="-4.125" dx="1.15" dy="0.7" layer="1" rot="R90"/>
<smd name="4" x="-2.7" y="-4.125" dx="1.15" dy="0.7" layer="1" rot="R90"/>
<smd name="3" x="-3.7" y="-4.125" dx="1.15" dy="0.7" layer="1" rot="R90"/>
<smd name="2" x="-4.7" y="-4.125" dx="1.15" dy="0.7" layer="1" rot="R90"/>
<smd name="1" x="-5.7" y="-4.125" dx="1.15" dy="0.7" layer="1" rot="R90"/>
<smd name="68" x="4.3" y="-4.35" dx="0.7" dy="0.7" layer="1"/>
<smd name="69" x="6.85" y="-4.35" dx="0.7" dy="0.7" layer="1"/>
<smd name="70" x="6.85" y="4.35" dx="0.7" dy="0.7" layer="1"/>
<smd name="71" x="4.3" y="4.35" dx="0.7" dy="0.7" layer="1"/>
<wire x1="7.5" y1="-5" x2="7.5" y2="5" width="0.15" layer="21"/>
<wire x1="-7.5" y1="5" x2="7.5" y2="5" width="0.15" layer="21"/>
<wire x1="-7.5" y1="-5" x2="-7.5" y2="5" width="0.15" layer="21"/>
<wire x1="-7.5" y1="-5" x2="7.5" y2="-5" width="0.15" layer="21"/>
<wire x1="-7.5" y1="-5" x2="-7.5" y2="5" width="0.1" layer="51"/>
<wire x1="-7.5" y1="5" x2="7.5" y2="5" width="0.1" layer="51"/>
<wire x1="7.5" y1="-5" x2="7.5" y2="5" width="0.1" layer="51"/>
<wire x1="-7.5" y1="-5" x2="7.5" y2="-5" width="0.1" layer="51"/>
<wire x1="-7.7" y1="5.2" x2="7.7" y2="5.2" width="0.05" layer="51"/>
<wire x1="-7.7" y1="-5.2" x2="-7.7" y2="5.2" width="0.05" layer="51"/>
<wire x1="0" y1="-0.5" x2="0" y2="0.5" width="0.05" layer="51"/>
<wire x1="-7.7" y1="-5.2" x2="7.7" y2="-5.2" width="0.05" layer="51"/>
<wire x1="7.7" y1="-5.2" x2="7.7" y2="5.2" width="0.05" layer="51"/>
<wire x1="-0.5" y1="0" x2="0.5" y2="0" width="0.05" layer="51"/>
<text x="0.1" y="0.433225" size="1" layer="51" font="vector">.Designator</text>
<text x="0" y="0" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="0" y="-1.524" size="1.27" layer="27" font="vector">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="NINA_LGA71R_1500X1000X223_PCB" urn="urn:adsk.eagle:package:35819087/1" type="box" library_version="1">
<packageinstances>
<packageinstance name="NINA_LGA71R_1500X1000X223_PCB"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="NINA-B306_A" urn="urn:adsk.eagle:symbol:35818985/1" library_version="1">
<pin name="EGP67" x="50.8" y="-106.68" length="middle" direction="pwr" rot="R90"/>
<pin name="EGP66" x="48.26" y="-106.68" length="middle" direction="pwr" rot="R90"/>
<pin name="EGP65" x="45.72" y="-106.68" length="middle" direction="pwr" rot="R90"/>
<pin name="EGP64" x="43.18" y="-106.68" length="middle" direction="pwr" rot="R90"/>
<pin name="EGP63" x="40.64" y="-106.68" length="middle" direction="pwr" rot="R90"/>
<pin name="EGP62" x="38.1" y="-106.68" length="middle" direction="pwr" rot="R90"/>
<pin name="EGP61" x="35.56" y="-106.68" length="middle" direction="pwr" rot="R90"/>
<pin name="EGP60" x="33.02" y="-106.68" length="middle" direction="pwr" rot="R90"/>
<pin name="EGP59" x="30.48" y="-106.68" length="middle" direction="pwr" rot="R90"/>
<pin name="EGP58" x="27.94" y="-106.68" length="middle" direction="pwr" rot="R90"/>
<pin name="EGP57" x="25.4" y="-106.68" length="middle" direction="pwr" rot="R90"/>
<pin name="EGP56" x="22.86" y="-106.68" length="middle" direction="pwr" rot="R90"/>
<pin name="EAGP71" x="60.96" y="-17.78" length="middle" direction="pwr" rot="R180"/>
<pin name="EAGP70" x="60.96" y="-15.24" length="middle" direction="pwr" rot="R180"/>
<pin name="EAGP69" x="60.96" y="-12.7" length="middle" direction="pwr" rot="R180"/>
<pin name="EAGP68" x="60.96" y="-10.16" length="middle" direction="pwr" rot="R180"/>
<pin name="GND26" x="12.7" y="-106.68" length="middle" direction="pwr" rot="R90"/>
<pin name="GND14" x="10.16" y="-106.68" length="middle" direction="pwr" rot="R90"/>
<pin name="GND12" x="7.62" y="-106.68" length="middle" direction="pwr" rot="R90"/>
<pin name="GND6" x="5.08" y="-106.68" length="middle" direction="pwr" rot="R90"/>
<pin name="GND53" x="17.78" y="-106.68" length="middle" direction="pwr" rot="R90"/>
<pin name="GPIO_47/P0.23/QSPI_D3" x="60.96" y="-63.5" length="middle" rot="R180"/>
<pin name="USB_DM" x="60.96" y="-86.36" length="middle" rot="R180"/>
<pin name="USB_DP" x="60.96" y="-83.82" length="middle" rot="R180"/>
<pin name="GPIO_52/P0.19/QSPI_CLK" x="60.96" y="-76.2" length="middle" rot="R180"/>
<pin name="GPIO_51/P0.17/QSPI_CS" x="60.96" y="-73.66" length="middle" rot="R180"/>
<pin name="GPIO_50/P0.20/QSPI_D0" x="60.96" y="-71.12" length="middle" rot="R180"/>
<pin name="GPIO_49/P0.22/QSPI_D2" x="60.96" y="-68.58" length="middle" rot="R180"/>
<pin name="GPIO_48/P0.21/QSPI_D1" x="60.96" y="-66.04" length="middle" rot="R180"/>
<pin name="GPIO_46/P0.12/TRACE_D1" x="-5.08" y="-86.36" length="middle"/>
<pin name="GPIO_45/P0.07/TRACE_CLK" x="-5.08" y="-83.82" length="middle"/>
<pin name="GPIO_44/P0.27" x="-5.08" y="-81.28" length="middle"/>
<pin name="GPIO_43/P0.06" x="-5.08" y="-78.74" length="middle"/>
<pin name="GPIO_42/P0.26" x="-5.08" y="-76.2" length="middle"/>
<pin name="GPIO_41/P1.14" x="-5.08" y="-73.66" length="middle"/>
<pin name="GPIO_40/P1.15" x="-5.08" y="-71.12" length="middle"/>
<pin name="GPIO_39/P1.11" x="-5.08" y="-68.58" length="middle"/>
<pin name="GPIO_38/P1.10" x="-5.08" y="-66.04" length="middle"/>
<pin name="GPIO_37/P1.03" x="-5.08" y="-63.5" length="middle"/>
<pin name="GPIO_36/P1.02" x="-5.08" y="-60.96" length="middle"/>
<pin name="GPIO_35/P1.01" x="-5.08" y="-58.42" length="middle"/>
<pin name="GPIO_34/P1.08" x="-5.08" y="-55.88" length="middle"/>
<pin name="GPIO_33/P1.09/TRACE_D3" x="-5.08" y="-53.34" length="middle"/>
<pin name="GPIO_32/P0.11/TRACE_D2" x="-5.08" y="-50.8" length="middle"/>
<pin name="VBUS" x="35.56" y="5.08" length="middle" direction="pwr" rot="R270"/>
<pin name="GPIO_21/P1.12" x="-5.08" y="-35.56" length="middle"/>
<pin name="GPIO_18/P0.02" x="-5.08" y="-30.48" length="middle"/>
<pin name="GPIO_22/P1.13" x="-5.08" y="-38.1" length="middle"/>
<pin name="GPIO_23/P0.29" x="-5.08" y="-40.64" length="middle"/>
<pin name="GPIO_7/P0.25" x="-5.08" y="-20.32" length="middle"/>
<pin name="GPIO_24/P0.30" x="-5.08" y="-43.18" length="middle"/>
<pin name="GPIO_25/P0.04" x="-5.08" y="-45.72" length="middle"/>
<pin name="GND30" x="15.24" y="-106.68" length="middle" direction="pwr" rot="R90"/>
<pin name="GPIO_3/P0.15" x="-5.08" y="-12.7" length="middle"/>
<pin name="GPIO_4/P0.16" x="-5.08" y="-15.24" length="middle"/>
<pin name="GPIO_16/P0.03" x="-5.08" y="-25.4" length="middle"/>
<pin name="GPIO_1/P0.13" x="-5.08" y="-7.62" length="middle"/>
<pin name="SWDCLK" x="60.96" y="-38.1" length="middle" direction="in" rot="R180"/>
<pin name="GPIO_17/P0.28" x="-5.08" y="-27.94" length="middle"/>
<pin name="GPIO_20/P0.31" x="-5.08" y="-33.02" length="middle"/>
<pin name="GPIO_2/P0.14" x="-5.08" y="-10.16" length="middle"/>
<pin name="SWDIO" x="60.96" y="-40.64" length="middle" rot="R180"/>
<pin name="GPIO_8/P1.00/TRACE_D0/SWO" x="-5.08" y="-22.86" length="middle"/>
<pin name="RESET_N" x="60.96" y="-33.02" length="middle" direction="in" rot="R180"/>
<pin name="RSVD13" x="60.96" y="-5.08" length="middle" direction="pas" rot="R180"/>
<pin name="GPIO_5/P0.24" x="-5.08" y="-17.78" length="middle"/>
<pin name="GPIO_29/P0.10/NFC2" x="60.96" y="-27.94" length="middle" rot="R180"/>
<pin name="GPIO_28/P0.09/NFC1" x="60.96" y="-25.4" length="middle" rot="R180"/>
<pin name="GPIO_27/P0.05" x="-5.08" y="-48.26" length="middle"/>
<pin name="VCC_IO" x="25.4" y="5.08" length="middle" direction="pwr" rot="R270"/>
<pin name="VCC" x="30.48" y="5.08" length="middle" direction="pwr" rot="R270"/>
<wire x1="50.8" y1="-101.6" x2="50.8" y2="-101.6" width="0.1524" layer="94"/>
<wire x1="48.26" y1="-101.6" x2="48.26" y2="-101.6" width="0.1524" layer="94"/>
<wire x1="45.72" y1="-101.6" x2="45.72" y2="-101.6" width="0.1524" layer="94"/>
<wire x1="43.18" y1="-101.6" x2="43.18" y2="-101.6" width="0.1524" layer="94"/>
<wire x1="40.64" y1="-101.6" x2="40.64" y2="-101.6" width="0.1524" layer="94"/>
<wire x1="38.1" y1="-101.6" x2="38.1" y2="-101.6" width="0.1524" layer="94"/>
<wire x1="35.56" y1="-101.6" x2="35.56" y2="-101.6" width="0.1524" layer="94"/>
<wire x1="33.02" y1="-101.6" x2="33.02" y2="-101.6" width="0.1524" layer="94"/>
<wire x1="30.48" y1="-101.6" x2="30.48" y2="-101.6" width="0.1524" layer="94"/>
<wire x1="27.94" y1="-101.6" x2="27.94" y2="-101.6" width="0.1524" layer="94"/>
<wire x1="25.4" y1="-101.6" x2="25.4" y2="-101.6" width="0.1524" layer="94"/>
<wire x1="22.86" y1="-101.6" x2="22.86" y2="-101.6" width="0.1524" layer="94"/>
<wire x1="55.88" y1="-17.78" x2="55.88" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="55.88" y1="-15.24" x2="55.88" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="55.88" y1="-12.7" x2="55.88" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="55.88" y1="-10.16" x2="55.88" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="12.7" y1="-101.6" x2="12.7" y2="-101.6" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-101.6" x2="10.16" y2="-101.6" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-101.6" x2="7.62" y2="-101.6" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-101.6" x2="5.08" y2="-101.6" width="0.1524" layer="94"/>
<wire x1="17.78" y1="-101.6" x2="17.78" y2="-101.6" width="0.1524" layer="94"/>
<wire x1="55.88" y1="-63.5" x2="55.88" y2="-63.5" width="0.1524" layer="94"/>
<wire x1="55.88" y1="-86.36" x2="55.88" y2="-86.36" width="0.1524" layer="94"/>
<wire x1="55.88" y1="-83.82" x2="55.88" y2="-83.82" width="0.1524" layer="94"/>
<wire x1="55.88" y1="-76.2" x2="55.88" y2="-76.2" width="0.1524" layer="94"/>
<wire x1="55.88" y1="-73.66" x2="55.88" y2="-73.66" width="0.1524" layer="94"/>
<wire x1="55.88" y1="-71.12" x2="55.88" y2="-71.12" width="0.1524" layer="94"/>
<wire x1="55.88" y1="-68.58" x2="55.88" y2="-68.58" width="0.1524" layer="94"/>
<wire x1="55.88" y1="-66.04" x2="55.88" y2="-66.04" width="0.1524" layer="94"/>
<wire x1="0" y1="-86.36" x2="0" y2="-86.36" width="0.1524" layer="94"/>
<wire x1="0" y1="-83.82" x2="0" y2="-83.82" width="0.1524" layer="94"/>
<wire x1="0" y1="-81.28" x2="0" y2="-81.28" width="0.1524" layer="94"/>
<wire x1="0" y1="-78.74" x2="0" y2="-78.74" width="0.1524" layer="94"/>
<wire x1="0" y1="-76.2" x2="0" y2="-76.2" width="0.1524" layer="94"/>
<wire x1="0" y1="-73.66" x2="0" y2="-73.66" width="0.1524" layer="94"/>
<wire x1="0" y1="-71.12" x2="0" y2="-71.12" width="0.1524" layer="94"/>
<wire x1="0" y1="-68.58" x2="0" y2="-68.58" width="0.1524" layer="94"/>
<wire x1="0" y1="-66.04" x2="0" y2="-66.04" width="0.1524" layer="94"/>
<wire x1="0" y1="-63.5" x2="0" y2="-63.5" width="0.1524" layer="94"/>
<wire x1="0" y1="-60.96" x2="0" y2="-60.96" width="0.1524" layer="94"/>
<wire x1="0" y1="-58.42" x2="0" y2="-58.42" width="0.1524" layer="94"/>
<wire x1="0" y1="-55.88" x2="0" y2="-55.88" width="0.1524" layer="94"/>
<wire x1="0" y1="-53.34" x2="0" y2="-53.34" width="0.1524" layer="94"/>
<wire x1="0" y1="-50.8" x2="0" y2="-50.8" width="0.1524" layer="94"/>
<wire x1="35.56" y1="0" x2="35.56" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="-35.56" x2="0" y2="-35.56" width="0.1524" layer="94"/>
<wire x1="0" y1="-30.48" x2="0" y2="-30.48" width="0.1524" layer="94"/>
<wire x1="0" y1="-38.1" x2="0" y2="-38.1" width="0.1524" layer="94"/>
<wire x1="0" y1="-40.64" x2="0" y2="-40.64" width="0.1524" layer="94"/>
<wire x1="0" y1="-20.32" x2="0" y2="-20.32" width="0.1524" layer="94"/>
<wire x1="0" y1="-43.18" x2="0" y2="-43.18" width="0.1524" layer="94"/>
<wire x1="0" y1="-45.72" x2="0" y2="-45.72" width="0.1524" layer="94"/>
<wire x1="15.24" y1="-101.6" x2="15.24" y2="-101.6" width="0.1524" layer="94"/>
<wire x1="0" y1="-12.7" x2="0" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="0" y1="-15.24" x2="0" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="0" y1="-25.4" x2="0" y2="-25.4" width="0.1524" layer="94"/>
<wire x1="0" y1="-7.62" x2="0" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="55.88" y1="-38.1" x2="55.88" y2="-38.1" width="0.1524" layer="94"/>
<wire x1="0" y1="-27.94" x2="0" y2="-27.94" width="0.1524" layer="94"/>
<wire x1="0" y1="-33.02" x2="0" y2="-33.02" width="0.1524" layer="94"/>
<wire x1="0" y1="-10.16" x2="0" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="55.88" y1="-40.64" x2="55.88" y2="-40.64" width="0.1524" layer="94"/>
<wire x1="0" y1="-22.86" x2="0" y2="-22.86" width="0.1524" layer="94"/>
<wire x1="55.88" y1="-33.02" x2="55.88" y2="-33.02" width="0.1524" layer="94"/>
<wire x1="55.88" y1="-5.08" x2="55.88" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="0" y1="-17.78" x2="0" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="55.88" y1="-27.94" x2="55.88" y2="-27.94" width="0.1524" layer="94"/>
<wire x1="55.88" y1="-25.4" x2="55.88" y2="-25.4" width="0.1524" layer="94"/>
<wire x1="0" y1="-48.26" x2="0" y2="-48.26" width="0.1524" layer="94"/>
<wire x1="25.4" y1="0" x2="25.4" y2="0" width="0.1524" layer="94"/>
<wire x1="30.48" y1="0" x2="30.48" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="-101.6" x2="55.88" y2="-101.6" width="0.1524" layer="94"/>
<wire x1="0" y1="-101.6" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="55.88" y1="0" x2="55.88" y2="-101.6" width="0.1524" layer="94"/>
<wire x1="55.88" y1="0" x2="0" y2="0" width="0.1524" layer="94"/>
<text x="55.88" y="0" size="1.27" layer="96" align="bottom-right">&gt;Value</text>
<text x="61.468" y="0" size="1.27" layer="95">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="NINA-B306" urn="urn:adsk.eagle:component:35819114/1" prefix="U" library_version="1">
<description>u-blox NINA-B306 Bluetooth 5 LE, 802.15.4 module</description>
<gates>
<gate name="A" symbol="NINA-B306_A" x="0" y="0"/>
</gates>
<devices>
<device name="NINA-B306_NINA_LGA71R_1500X1000X223_PCB" package="NINA_LGA71R_1500X1000X223_PCB">
<connects>
<connect gate="A" pin="EAGP68" pad="68"/>
<connect gate="A" pin="EAGP69" pad="69"/>
<connect gate="A" pin="EAGP70" pad="70"/>
<connect gate="A" pin="EAGP71" pad="71"/>
<connect gate="A" pin="EGP56" pad="56"/>
<connect gate="A" pin="EGP57" pad="57"/>
<connect gate="A" pin="EGP58" pad="58"/>
<connect gate="A" pin="EGP59" pad="59"/>
<connect gate="A" pin="EGP60" pad="60"/>
<connect gate="A" pin="EGP61" pad="61"/>
<connect gate="A" pin="EGP62" pad="62"/>
<connect gate="A" pin="EGP63" pad="63"/>
<connect gate="A" pin="EGP64" pad="64"/>
<connect gate="A" pin="EGP65" pad="65"/>
<connect gate="A" pin="EGP66" pad="66"/>
<connect gate="A" pin="EGP67" pad="67"/>
<connect gate="A" pin="GND12" pad="12"/>
<connect gate="A" pin="GND14" pad="14"/>
<connect gate="A" pin="GND26" pad="26"/>
<connect gate="A" pin="GND30" pad="30"/>
<connect gate="A" pin="GND53" pad="53"/>
<connect gate="A" pin="GND6" pad="6"/>
<connect gate="A" pin="GPIO_1/P0.13" pad="1"/>
<connect gate="A" pin="GPIO_16/P0.03" pad="16"/>
<connect gate="A" pin="GPIO_17/P0.28" pad="17"/>
<connect gate="A" pin="GPIO_18/P0.02" pad="18"/>
<connect gate="A" pin="GPIO_2/P0.14" pad="2"/>
<connect gate="A" pin="GPIO_20/P0.31" pad="20"/>
<connect gate="A" pin="GPIO_21/P1.12" pad="21"/>
<connect gate="A" pin="GPIO_22/P1.13" pad="22"/>
<connect gate="A" pin="GPIO_23/P0.29" pad="23"/>
<connect gate="A" pin="GPIO_24/P0.30" pad="24"/>
<connect gate="A" pin="GPIO_25/P0.04" pad="25"/>
<connect gate="A" pin="GPIO_27/P0.05" pad="27"/>
<connect gate="A" pin="GPIO_28/P0.09/NFC1" pad="28"/>
<connect gate="A" pin="GPIO_29/P0.10/NFC2" pad="29"/>
<connect gate="A" pin="GPIO_3/P0.15" pad="3"/>
<connect gate="A" pin="GPIO_32/P0.11/TRACE_D2" pad="32"/>
<connect gate="A" pin="GPIO_33/P1.09/TRACE_D3" pad="33"/>
<connect gate="A" pin="GPIO_34/P1.08" pad="34"/>
<connect gate="A" pin="GPIO_35/P1.01" pad="35"/>
<connect gate="A" pin="GPIO_36/P1.02" pad="36"/>
<connect gate="A" pin="GPIO_37/P1.03" pad="37"/>
<connect gate="A" pin="GPIO_38/P1.10" pad="38"/>
<connect gate="A" pin="GPIO_39/P1.11" pad="39"/>
<connect gate="A" pin="GPIO_4/P0.16" pad="4"/>
<connect gate="A" pin="GPIO_40/P1.15" pad="40"/>
<connect gate="A" pin="GPIO_41/P1.14" pad="41"/>
<connect gate="A" pin="GPIO_42/P0.26" pad="42"/>
<connect gate="A" pin="GPIO_43/P0.06" pad="43"/>
<connect gate="A" pin="GPIO_44/P0.27" pad="44"/>
<connect gate="A" pin="GPIO_45/P0.07/TRACE_CLK" pad="45"/>
<connect gate="A" pin="GPIO_46/P0.12/TRACE_D1" pad="46"/>
<connect gate="A" pin="GPIO_47/P0.23/QSPI_D3" pad="47"/>
<connect gate="A" pin="GPIO_48/P0.21/QSPI_D1" pad="48"/>
<connect gate="A" pin="GPIO_49/P0.22/QSPI_D2" pad="49"/>
<connect gate="A" pin="GPIO_5/P0.24" pad="5"/>
<connect gate="A" pin="GPIO_50/P0.20/QSPI_D0" pad="50"/>
<connect gate="A" pin="GPIO_51/P0.17/QSPI_CS" pad="51"/>
<connect gate="A" pin="GPIO_52/P0.19/QSPI_CLK" pad="52"/>
<connect gate="A" pin="GPIO_7/P0.25" pad="7"/>
<connect gate="A" pin="GPIO_8/P1.00/TRACE_D0/SWO" pad="8"/>
<connect gate="A" pin="RESET_N" pad="19"/>
<connect gate="A" pin="RSVD13" pad="13"/>
<connect gate="A" pin="SWDCLK" pad="11"/>
<connect gate="A" pin="SWDIO" pad="15"/>
<connect gate="A" pin="USB_DM" pad="55"/>
<connect gate="A" pin="USB_DP" pad="54"/>
<connect gate="A" pin="VBUS" pad="31"/>
<connect gate="A" pin="VCC" pad="10"/>
<connect gate="A" pin="VCC_IO" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:35819087/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MANUFACTURER" value="u-blox"/>
<attribute name="PART_DESCRIPTION" value="Stand-alone Bluetooth low energy module"/>
<attribute name="VALUE" value="NINA-B306"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="LMS8117ADT-3.3">
<packages>
<package name="TO457P970X238-3N">
<wire x1="-1.8542" y1="-3.048" x2="-2.7178" y2="-3.048" width="0.1524" layer="51"/>
<wire x1="-2.7178" y1="-3.048" x2="-2.7178" y2="-6.8072" width="0.1524" layer="51"/>
<wire x1="-2.7178" y1="-6.8072" x2="-1.8542" y2="-6.8072" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="-6.8072" x2="-1.8542" y2="-3.048" width="0.1524" layer="51"/>
<wire x1="2.7178" y1="-3.048" x2="1.8542" y2="-3.048" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="-3.048" x2="1.8542" y2="-6.8072" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="-6.8072" x2="2.7178" y2="-6.8072" width="0.1524" layer="51"/>
<wire x1="2.7178" y1="-6.8072" x2="2.7178" y2="-3.048" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="-3.048" x2="3.302" y2="-3.048" width="0.1524" layer="51"/>
<wire x1="3.302" y1="-3.048" x2="3.302" y2="3.048" width="0.1524" layer="51"/>
<wire x1="3.302" y1="3.048" x2="-3.302" y2="3.048" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="3.048" x2="-3.302" y2="-3.048" width="0.1524" layer="51"/>
<text x="-4.47533125" y="4.04305" size="2.0851" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.8003" y="-9.89611875" size="2.08606875" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
<smd name="1" x="-2.286" y="-6.5532" dx="0.889" dy="1.2192" layer="1"/>
<smd name="2" x="2.286" y="-6.5532" dx="0.889" dy="1.2192" layer="1"/>
<smd name="3" x="0" y="0.1524" dx="6.5786" dy="6.4008" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="LMS8117ADT-3.3">
<wire x1="-12.7" y1="5.08" x2="-12.7" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="-12.7" y1="-10.16" x2="12.7" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="12.7" y1="-10.16" x2="12.7" y2="5.08" width="0.4064" layer="94"/>
<wire x1="12.7" y1="5.08" x2="-12.7" y2="5.08" width="0.4064" layer="94"/>
<text x="-4.95818125" y="6.91603125" size="2.08498125" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-6.55365" y="-13.3613" size="2.082940625" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
<pin name="VIN" x="-17.78" y="0" length="middle" direction="pwr"/>
<pin name="GND" x="-17.78" y="-5.08" length="middle" direction="pas"/>
<pin name="VOUT" x="17.78" y="0" length="middle" direction="out" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LMS8117ADT-3.3" prefix="U">
<description>Low-Dropout Linear Regulator </description>
<gates>
<gate name="A" symbol="LMS8117ADT-3.3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TO457P970X238-3N">
<connects>
<connect gate="A" pin="GND" pad="2"/>
<connect gate="A" pin="VIN" pad="3"/>
<connect gate="A" pin="VOUT" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value=" 1-A, 15-V, linear voltage regulator from 0??C to 125??C "/>
<attribute name="DIGI-KEY_PART_NUMBER" value="2156-LMS8117ADT-3.3/NOPB-TI-ND"/>
<attribute name="MF" value="Texas Instruments"/>
<attribute name="MP" value="LMS8117ADT-3.3/NOPB"/>
<attribute name="PACKAGE" value="TO-252-3 Texas Instruments"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/LMS8117ADT-3.3/NOPB/?ref=eda"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
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
<symbol name="VCC" urn="urn:adsk.eagle:symbol:26928/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="VDD" urn="urn:adsk.eagle:symbol:26943/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.27" y1="-1.905" x2="0" y2="1.27" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VDD" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VCC" urn="urn:adsk.eagle:component:26957/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VDD" urn="urn:adsk.eagle:component:26970/1" prefix="VDD" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VDD" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
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
<library name="BMP390L">
<packages>
<package name="XDCR_BMP390L">
<wire x1="-1" y1="-1" x2="-1" y2="1" width="0.127" layer="51"/>
<wire x1="-1" y1="1" x2="1" y2="1" width="0.127" layer="51"/>
<wire x1="1" y1="1" x2="1" y2="-1" width="0.127" layer="51"/>
<wire x1="1" y1="-1" x2="-1" y2="-1" width="0.127" layer="51"/>
<wire x1="-1" y1="0.7075" x2="-1" y2="1" width="0.127" layer="21"/>
<wire x1="-1" y1="-1" x2="-1" y2="-0.7075" width="0.127" layer="21"/>
<wire x1="-1" y1="1" x2="-0.9575" y2="1" width="0.127" layer="21"/>
<wire x1="0.9575" y1="1" x2="1" y2="1" width="0.127" layer="21"/>
<wire x1="1" y1="1" x2="1" y2="0.7075" width="0.127" layer="21"/>
<wire x1="1" y1="-1" x2="1" y2="-0.7075" width="0.127" layer="21"/>
<wire x1="-0.9575" y1="-1" x2="-1" y2="-1" width="0.127" layer="21"/>
<wire x1="1" y1="-1" x2="0.9575" y2="-1" width="0.127" layer="21"/>
<wire x1="-1.25" y1="1.25" x2="-1.25" y2="-1.25" width="0.05" layer="39"/>
<wire x1="-1.25" y1="-1.25" x2="1.25" y2="-1.25" width="0.05" layer="39"/>
<wire x1="1.25" y1="-1.25" x2="1.25" y2="1.25" width="0.05" layer="39"/>
<wire x1="1.25" y1="1.25" x2="-1.25" y2="1.25" width="0.05" layer="39"/>
<circle x="-1.5875" y="0.35" radius="0.1" width="0.2" layer="21"/>
<circle x="-1.5875" y="0.35" radius="0.1" width="0.2" layer="51"/>
<text x="-1.25" y="1.35" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.25" y="-1.35" size="0.4064" layer="27" align="top-left">&gt;VALUE</text>
<smd name="3" x="-0.5" y="-0.7625" dx="0.25" dy="0.275" layer="1"/>
<smd name="4" x="0" y="-0.7625" dx="0.25" dy="0.275" layer="1"/>
<smd name="10" x="-0.5" y="0.7625" dx="0.25" dy="0.275" layer="1"/>
<smd name="9" x="0" y="0.7625" dx="0.25" dy="0.275" layer="1"/>
<smd name="5" x="0.5" y="-0.7625" dx="0.25" dy="0.275" layer="1"/>
<smd name="8" x="0.5" y="0.7625" dx="0.25" dy="0.275" layer="1"/>
<smd name="1" x="-0.7625" y="0.25" dx="0.275" dy="0.25" layer="1"/>
<smd name="2" x="-0.7625" y="-0.25" dx="0.275" dy="0.25" layer="1"/>
<smd name="7" x="0.7625" y="0.25" dx="0.275" dy="0.25" layer="1"/>
<smd name="6" x="0.7625" y="-0.25" dx="0.275" dy="0.25" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="BMP390L">
<text x="-10.16" y="13.97" size="1.778" layer="95">&gt;NAME</text>
<wire x1="-10.16" y1="12.7" x2="10.16" y2="12.7" width="0.254" layer="94"/>
<text x="-10.16" y="-11.43" size="1.778" layer="96" align="top-left">&gt;VALUE</text>
<wire x1="-10.16" y1="-10.16" x2="10.16" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-10.16" x2="-10.16" y2="12.7" width="0.254" layer="94"/>
<wire x1="10.16" y1="-10.16" x2="10.16" y2="12.7" width="0.254" layer="94"/>
<pin name="VDD" x="15.24" y="10.16" length="middle" direction="pwr" rot="R180"/>
<pin name="VDDIO" x="15.24" y="7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="CSB" x="-15.24" y="5.08" length="middle" direction="in"/>
<pin name="SCK" x="-15.24" y="0" length="middle" direction="in" function="clk"/>
<pin name="SDI" x="-15.24" y="-2.54" length="middle" direction="in"/>
<pin name="SDO" x="-15.24" y="-5.08" length="middle" direction="out"/>
<pin name="INT" x="15.24" y="0" length="middle" direction="out" rot="R180"/>
<pin name="VSS" x="15.24" y="-7.62" length="middle" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="BMP390L" prefix="U">
<description> &lt;a href="https://pricing.snapeda.com/parts/BMP390L/Bosch%20Sensortec/view-part?ref=eda"&gt;Check availability&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="BMP390L" x="0" y="0"/>
</gates>
<devices>
<device name="" package="XDCR_BMP390L">
<connects>
<connect gate="G$1" pin="CSB" pad="6"/>
<connect gate="G$1" pin="INT" pad="7"/>
<connect gate="G$1" pin="SCK" pad="2"/>
<connect gate="G$1" pin="SDI" pad="4"/>
<connect gate="G$1" pin="SDO" pad="5"/>
<connect gate="G$1" pin="VDD" pad="10"/>
<connect gate="G$1" pin="VDDIO" pad="1"/>
<connect gate="G$1" pin="VSS" pad="3 8 9"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="In Stock"/>
<attribute name="DESCRIPTION" value=" Pressure Sensor 4.35PSI ~ 18.13PSI (30kPa ~ 125kPa) Absolute - - 10-WFLGA "/>
<attribute name="MF" value="Bosch Sensortec"/>
<attribute name="MP" value="BMP390L"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/BMP390L/?ref=eda"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="BNO055">
<packages>
<package name="LGA28R50P4X10_380X520X100">
<wire x1="-2.6" y1="1.9" x2="-2.6" y2="-1.9" width="0.127" layer="21"/>
<wire x1="-2.6" y1="-1.9" x2="2.6" y2="-1.9" width="0.127" layer="21"/>
<wire x1="2.6" y1="-1.9" x2="2.6" y2="1.9" width="0.127" layer="21"/>
<wire x1="2.6" y1="1.9" x2="-2.6" y2="1.9" width="0.127" layer="21"/>
<wire x1="-2.9" y1="2.2" x2="2.9" y2="2.2" width="0.127" layer="39"/>
<wire x1="2.9" y1="2.2" x2="2.9" y2="-2.2" width="0.127" layer="39"/>
<wire x1="2.9" y1="-2.2" x2="-2.9" y2="-2.2" width="0.127" layer="39"/>
<wire x1="-2.9" y1="-2.2" x2="-2.9" y2="2.2" width="0.127" layer="39"/>
<circle x="-2.2" y="2.3" radius="0.1" width="0.3048" layer="21"/>
<text x="-1.501509375" y="2.202209375" size="1.27128125" layer="25">&gt;NAME</text>
<text x="-2.703509375" y="-3.304290625" size="1.27165" layer="27">&gt;VALUE</text>
<smd name="1" x="-2.25" y="1.5625" dx="0.3" dy="0.525" layer="1" rot="R180"/>
<smd name="2" x="-2.3125" y="0.75" dx="0.3" dy="0.425" layer="1" rot="R270"/>
<smd name="3" x="-2.3125" y="0.25" dx="0.3" dy="0.425" layer="1" rot="R270"/>
<smd name="4" x="-2.3125" y="-0.25" dx="0.3" dy="0.425" layer="1" rot="R270"/>
<smd name="5" x="-2.3125" y="-0.75" dx="0.3" dy="0.425" layer="1" rot="R270"/>
<smd name="6" x="-2.25" y="-1.5625" dx="0.3" dy="0.525" layer="1" rot="R180"/>
<smd name="7" x="-1.75" y="-1.5625" dx="0.3" dy="0.525" layer="1" rot="R180"/>
<smd name="8" x="-1.25" y="-1.5625" dx="0.3" dy="0.525" layer="1" rot="R180"/>
<smd name="9" x="-0.75" y="-1.5625" dx="0.3" dy="0.525" layer="1" rot="R180"/>
<smd name="10" x="-0.25" y="-1.5625" dx="0.3" dy="0.525" layer="1" rot="R180"/>
<smd name="11" x="0.25" y="-1.5625" dx="0.3" dy="0.525" layer="1" rot="R180"/>
<smd name="12" x="0.75" y="-1.5625" dx="0.3" dy="0.525" layer="1" rot="R180"/>
<smd name="13" x="1.25" y="-1.5625" dx="0.3" dy="0.525" layer="1" rot="R180"/>
<smd name="14" x="1.75" y="-1.5625" dx="0.3" dy="0.525" layer="1" rot="R180"/>
<smd name="15" x="2.25" y="-1.5625" dx="0.3" dy="0.525" layer="1" rot="R180"/>
<smd name="16" x="2.3125" y="-0.75" dx="0.3" dy="0.425" layer="1" rot="R270"/>
<smd name="17" x="2.3125" y="-0.25" dx="0.3" dy="0.425" layer="1" rot="R270"/>
<smd name="18" x="2.3125" y="0.25" dx="0.3" dy="0.425" layer="1" rot="R270"/>
<smd name="19" x="2.3125" y="0.75" dx="0.3" dy="0.425" layer="1" rot="R270"/>
<smd name="20" x="2.25" y="1.5625" dx="0.3" dy="0.525" layer="1" rot="R180"/>
<smd name="21" x="1.75" y="1.5625" dx="0.3" dy="0.525" layer="1" rot="R180"/>
<smd name="22" x="1.25" y="1.5625" dx="0.3" dy="0.525" layer="1" rot="R180"/>
<smd name="23" x="0.75" y="1.5625" dx="0.3" dy="0.525" layer="1" rot="R180"/>
<smd name="24" x="0.25" y="1.5625" dx="0.3" dy="0.525" layer="1" rot="R180"/>
<smd name="25" x="-0.25" y="1.5625" dx="0.3" dy="0.525" layer="1" rot="R180"/>
<smd name="26" x="-0.75" y="1.5625" dx="0.3" dy="0.525" layer="1" rot="R180"/>
<smd name="27" x="-1.25" y="1.5625" dx="0.3" dy="0.525" layer="1" rot="R180"/>
<smd name="28" x="-1.75" y="1.5625" dx="0.3" dy="0.525" layer="1" rot="R180"/>
</package>
</packages>
<symbols>
<symbol name="BNO055">
<wire x1="-15.24" y1="15.24" x2="-15.24" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-17.78" x2="15.24" y2="-17.78" width="0.254" layer="94"/>
<wire x1="15.24" y1="-17.78" x2="15.24" y2="15.24" width="0.254" layer="94"/>
<wire x1="15.24" y1="15.24" x2="-15.24" y2="15.24" width="0.254" layer="94"/>
<text x="-14.7397" y="15.7562" size="1.270659375" layer="95">&gt;NAME</text>
<text x="-14.7607" y="-19.5962" size="1.27248125" layer="96">&gt;VALUE</text>
<pin name="GND" x="20.32" y="-15.24" length="middle" direction="pwr" rot="R180"/>
<pin name="VDD" x="20.32" y="12.7" length="middle" direction="pwr" rot="R180"/>
<pin name="NBOOT_LOAD_PIN" x="-20.32" y="0" length="middle"/>
<pin name="PS0" x="-20.32" y="12.7" length="middle" direction="in"/>
<pin name="PS1" x="-20.32" y="10.16" length="middle" direction="in"/>
<pin name="CAP" x="-20.32" y="-15.24" length="middle" direction="pas"/>
<pin name="PIN10" x="20.32" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="NRESET" x="-20.32" y="5.08" length="middle" direction="in"/>
<pin name="INT" x="20.32" y="2.54" length="middle" direction="out" rot="R180"/>
<pin name="PIN15" x="20.32" y="-7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="PIN16" x="20.32" y="-10.16" length="middle" direction="pwr" rot="R180"/>
<pin name="COM0" x="-20.32" y="-2.54" length="middle"/>
<pin name="COM1" x="-20.32" y="-5.08" length="middle"/>
<pin name="COM2" x="-20.32" y="-7.62" length="middle"/>
<pin name="COM3" x="-20.32" y="-10.16" length="middle"/>
<pin name="GNDIO" x="20.32" y="-12.7" length="middle" direction="pwr" rot="R180"/>
<pin name="XOUT32" x="20.32" y="5.08" length="middle" direction="out" rot="R180"/>
<pin name="XIN32" x="-20.32" y="7.62" length="middle" direction="in"/>
<pin name="VDDIO" x="20.32" y="10.16" length="middle" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="BNO055" prefix="U">
<description>BNO055 9-axis Absolute Orientation Sensor ( SiP ) w/Sensors and Sensor Fusion &lt;a href="https://pricing.snapeda.com/parts/BNO055/Bosch/view-part?ref=eda"&gt;Check availability&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="BNO055" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LGA28R50P4X10_380X520X100">
<connects>
<connect gate="G$1" pin="CAP" pad="9"/>
<connect gate="G$1" pin="COM0" pad="20"/>
<connect gate="G$1" pin="COM1" pad="19"/>
<connect gate="G$1" pin="COM2" pad="18"/>
<connect gate="G$1" pin="COM3" pad="17"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="GNDIO" pad="25"/>
<connect gate="G$1" pin="INT" pad="14"/>
<connect gate="G$1" pin="NBOOT_LOAD_PIN" pad="4"/>
<connect gate="G$1" pin="NRESET" pad="11"/>
<connect gate="G$1" pin="PIN10" pad="10"/>
<connect gate="G$1" pin="PIN15" pad="15"/>
<connect gate="G$1" pin="PIN16" pad="16"/>
<connect gate="G$1" pin="PS0" pad="6"/>
<connect gate="G$1" pin="PS1" pad="5"/>
<connect gate="G$1" pin="VDD" pad="3"/>
<connect gate="G$1" pin="VDDIO" pad="28"/>
<connect gate="G$1" pin="XIN32" pad="27"/>
<connect gate="G$1" pin="XOUT32" pad="26"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="In Stock"/>
<attribute name="DESCRIPTION" value=" BNO055 series Accelerometer, Gyroscope, Magnetometer, 3 Axis Sensor Evaluation Board "/>
<attribute name="MF" value="Bosch"/>
<attribute name="MP" value="BNO055"/>
<attribute name="PACKAGE" value="LGA-28 Bosch"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/BNO055/?ref=eda"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="USBHousing">
<packages>
<package name="CONN5_ZX62-AB-5PA_HIR">
<smd name="1" x="-1.3" y="2.5019" dx="0.4064" dy="1.3462" layer="1"/>
<smd name="2" x="-0.65" y="2.5019" dx="0.4064" dy="1.3462" layer="1"/>
<smd name="3" x="0" y="2.5019" dx="0.4064" dy="1.3462" layer="1"/>
<smd name="4" x="0.65" y="2.5019" dx="0.4064" dy="1.3462" layer="1"/>
<smd name="5" x="1.3" y="2.5019" dx="0.4064" dy="1.3462" layer="1"/>
<smd name="6" x="-3.0988" y="2.3749" dx="2.1082" dy="1.6002" layer="1" rot="R90"/>
<smd name="7" x="3.0988" y="2.3749" dx="2.1082" dy="1.6002" layer="1" rot="R90"/>
<smd name="8" x="-4.0005" y="-0.1651" dx="1.8034" dy="1.905" layer="1" rot="R90"/>
<smd name="9" x="4.0005" y="-0.1651" dx="1.8034" dy="1.905" layer="1" rot="R90"/>
<polygon width="0.0254" layer="41">
<vertex x="4.1275" y="2.8829"/>
<vertex x="4.1275" y="-2.8829"/>
<vertex x="-4.1275" y="-2.8829"/>
<vertex x="-4.1275" y="2.8829"/>
</polygon>
<wire x1="-1.2954" y1="2.4892" x2="-1.2954" y2="5.334" width="0.1524" layer="47"/>
<wire x1="-1.2954" y1="5.334" x2="-1.2954" y2="5.715" width="0.1524" layer="47"/>
<wire x1="-0.6604" y1="2.4892" x2="-0.6604" y2="5.334" width="0.1524" layer="47"/>
<wire x1="-0.6604" y1="5.334" x2="-0.6604" y2="5.715" width="0.1524" layer="47"/>
<wire x1="-1.2954" y1="5.334" x2="-2.5654" y2="5.334" width="0.1524" layer="47"/>
<wire x1="-0.6604" y1="5.334" x2="0.6096" y2="5.334" width="0.1524" layer="47"/>
<wire x1="-1.2954" y1="5.334" x2="-1.5494" y2="5.461" width="0.1524" layer="47"/>
<wire x1="-1.2954" y1="5.334" x2="-1.5494" y2="5.207" width="0.1524" layer="47"/>
<wire x1="-1.5494" y1="5.461" x2="-1.5494" y2="5.207" width="0.1524" layer="47"/>
<wire x1="-0.6604" y1="5.334" x2="-0.4064" y2="5.461" width="0.1524" layer="47"/>
<wire x1="-0.6604" y1="5.334" x2="-0.4064" y2="5.207" width="0.1524" layer="47"/>
<wire x1="-0.4064" y1="5.461" x2="-0.4064" y2="5.207" width="0.1524" layer="47"/>
<wire x1="-4.0132" y1="-0.1524" x2="-4.0132" y2="8.509" width="0.1524" layer="47"/>
<wire x1="-4.0132" y1="8.509" x2="-4.0132" y2="8.89" width="0.1524" layer="47"/>
<wire x1="4.0132" y1="-0.1524" x2="4.0132" y2="8.509" width="0.1524" layer="47"/>
<wire x1="4.0132" y1="8.509" x2="4.0132" y2="8.89" width="0.1524" layer="47"/>
<wire x1="-4.0132" y1="8.509" x2="4.0132" y2="8.509" width="0.1524" layer="47"/>
<wire x1="-4.0132" y1="8.509" x2="-3.7592" y2="8.636" width="0.1524" layer="47"/>
<wire x1="-4.0132" y1="8.509" x2="-3.7592" y2="8.382" width="0.1524" layer="47"/>
<wire x1="-3.7592" y1="8.636" x2="-3.7592" y2="8.382" width="0.1524" layer="47"/>
<wire x1="4.0132" y1="8.509" x2="3.7592" y2="8.636" width="0.1524" layer="47"/>
<wire x1="4.0132" y1="8.509" x2="3.7592" y2="8.382" width="0.1524" layer="47"/>
<wire x1="3.7592" y1="8.636" x2="3.7592" y2="8.382" width="0.1524" layer="47"/>
<wire x1="-3.0988" y1="2.3876" x2="-3.0988" y2="11.049" width="0.1524" layer="47"/>
<wire x1="-3.0988" y1="11.049" x2="-3.0988" y2="11.43" width="0.1524" layer="47"/>
<wire x1="3.0988" y1="2.3876" x2="3.0988" y2="11.049" width="0.1524" layer="47"/>
<wire x1="3.0988" y1="11.049" x2="3.0988" y2="11.43" width="0.1524" layer="47"/>
<wire x1="-3.0988" y1="11.049" x2="3.0988" y2="11.049" width="0.1524" layer="47"/>
<wire x1="-3.0988" y1="11.049" x2="-2.8448" y2="11.176" width="0.1524" layer="47"/>
<wire x1="-3.0988" y1="11.049" x2="-2.8448" y2="10.922" width="0.1524" layer="47"/>
<wire x1="-2.8448" y1="11.176" x2="-2.8448" y2="10.922" width="0.1524" layer="47"/>
<wire x1="3.0988" y1="11.049" x2="2.8448" y2="11.176" width="0.1524" layer="47"/>
<wire x1="3.0988" y1="11.049" x2="2.8448" y2="10.922" width="0.1524" layer="47"/>
<wire x1="2.8448" y1="11.176" x2="2.8448" y2="10.922" width="0.1524" layer="47"/>
<wire x1="-3.7592" y1="2.4892" x2="-3.7592" y2="13.589" width="0.1524" layer="47"/>
<wire x1="-3.7592" y1="13.589" x2="-3.7592" y2="13.97" width="0.1524" layer="47"/>
<wire x1="3.7592" y1="2.4892" x2="3.7592" y2="13.589" width="0.1524" layer="47"/>
<wire x1="3.7592" y1="13.589" x2="3.7592" y2="13.97" width="0.1524" layer="47"/>
<wire x1="-3.7592" y1="13.589" x2="3.7592" y2="13.589" width="0.1524" layer="47"/>
<wire x1="-3.7592" y1="13.589" x2="-3.5052" y2="13.716" width="0.1524" layer="47"/>
<wire x1="-3.7592" y1="13.589" x2="-3.5052" y2="13.462" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="13.716" x2="-3.5052" y2="13.462" width="0.1524" layer="47"/>
<wire x1="3.7592" y1="13.589" x2="3.5052" y2="13.716" width="0.1524" layer="47"/>
<wire x1="3.7592" y1="13.589" x2="3.5052" y2="13.462" width="0.1524" layer="47"/>
<wire x1="3.5052" y1="13.716" x2="3.5052" y2="13.462" width="0.1524" layer="47"/>
<wire x1="-1.2954" y1="2.4892" x2="6.2992" y2="2.4892" width="0.1524" layer="47"/>
<wire x1="6.2992" y1="2.4892" x2="6.6548" y2="2.4892" width="0.1524" layer="47"/>
<wire x1="6.2992" y1="2.4892" x2="6.2992" y2="3.7592" width="0.1524" layer="47"/>
<wire x1="6.2992" y1="2.4892" x2="6.2992" y2="1.2192" width="0.1524" layer="47"/>
<wire x1="6.2992" y1="2.4892" x2="6.1468" y2="2.7432" width="0.1524" layer="47"/>
<wire x1="6.2992" y1="2.4892" x2="6.4008" y2="2.7432" width="0.1524" layer="47"/>
<wire x1="6.1468" y1="2.7432" x2="6.4008" y2="2.7432" width="0.1524" layer="47"/>
<wire x1="6.2992" y1="2.4892" x2="6.1468" y2="2.2352" width="0.1524" layer="47"/>
<wire x1="6.2992" y1="2.4892" x2="6.4008" y2="2.2352" width="0.1524" layer="47"/>
<wire x1="6.1468" y1="2.2352" x2="6.4008" y2="2.2352" width="0.1524" layer="47"/>
<wire x1="3.0988" y1="2.3876" x2="-7.0612" y2="2.3876" width="0.1524" layer="47"/>
<wire x1="-7.0612" y1="2.3876" x2="-7.4422" y2="2.3876" width="0.1524" layer="47"/>
<wire x1="-7.0612" y1="2.4892" x2="-7.0612" y2="3.7592" width="0.1524" layer="47"/>
<wire x1="-7.0612" y1="2.3876" x2="-7.0612" y2="1.1176" width="0.1524" layer="47"/>
<wire x1="-7.0612" y1="2.4892" x2="-7.1882" y2="2.7432" width="0.1524" layer="47"/>
<wire x1="-7.0612" y1="2.4892" x2="-6.9342" y2="2.7432" width="0.1524" layer="47"/>
<wire x1="-7.1882" y1="2.7432" x2="-6.9342" y2="2.7432" width="0.1524" layer="47"/>
<wire x1="-7.0612" y1="2.3876" x2="-7.1882" y2="2.1336" width="0.1524" layer="47"/>
<wire x1="-7.0612" y1="2.3876" x2="-6.9342" y2="2.1336" width="0.1524" layer="47"/>
<wire x1="-7.1882" y1="2.1336" x2="-6.9342" y2="2.1336" width="0.1524" layer="47"/>
<wire x1="-7.0612" y1="2.4892" x2="-10.2362" y2="2.4892" width="0.1524" layer="47"/>
<wire x1="-10.2362" y1="2.4892" x2="-10.6172" y2="2.4892" width="0.1524" layer="47"/>
<wire x1="4.0132" y1="-0.1524" x2="-10.2362" y2="-0.1524" width="0.1524" layer="47"/>
<wire x1="-10.2362" y1="-0.1524" x2="-10.6172" y2="-0.1524" width="0.1524" layer="47"/>
<wire x1="-10.2362" y1="2.4892" x2="-10.2362" y2="3.7592" width="0.1524" layer="47"/>
<wire x1="-10.2362" y1="-0.1524" x2="-10.2362" y2="-1.4224" width="0.1524" layer="47"/>
<wire x1="-10.2362" y1="2.4892" x2="-10.3632" y2="2.7432" width="0.1524" layer="47"/>
<wire x1="-10.2362" y1="2.4892" x2="-10.1092" y2="2.7432" width="0.1524" layer="47"/>
<wire x1="-10.3632" y1="2.7432" x2="-10.1092" y2="2.7432" width="0.1524" layer="47"/>
<wire x1="-10.2362" y1="-0.1524" x2="-10.3632" y2="-0.4064" width="0.1524" layer="47"/>
<wire x1="-10.2362" y1="-0.1524" x2="-10.1092" y2="-0.4064" width="0.1524" layer="47"/>
<wire x1="-10.3632" y1="-0.4064" x2="-10.1092" y2="-0.4064" width="0.1524" layer="47"/>
<wire x1="-1.2954" y1="2.4892" x2="-3.7592" y2="2.4892" width="0.1524" layer="47"/>
<wire x1="-15.3162" y1="2.4892" x2="-15.6972" y2="2.4892" width="0.1524" layer="47"/>
<wire x1="-15.3162" y1="2.4892" x2="-15.3162" y2="3.7592" width="0.1524" layer="47"/>
<wire x1="-15.3162" y1="2.4892" x2="-15.3162" y2="1.2192" width="0.1524" layer="47"/>
<wire x1="-15.3162" y1="2.4892" x2="-15.4432" y2="2.7432" width="0.1524" layer="47"/>
<wire x1="-15.3162" y1="2.4892" x2="-15.1892" y2="2.7432" width="0.1524" layer="47"/>
<wire x1="-15.4432" y1="2.7432" x2="-15.1892" y2="2.7432" width="0.1524" layer="47"/>
<wire x1="-15.3162" y1="2.4892" x2="-15.4432" y2="2.2352" width="0.1524" layer="47"/>
<wire x1="-15.3162" y1="2.4892" x2="-15.1892" y2="2.2352" width="0.1524" layer="47"/>
<wire x1="-15.4432" y1="2.2352" x2="-15.1892" y2="2.2352" width="0.1524" layer="47"/>
<wire x1="-3.7592" y1="2.4892" x2="-14.0462" y2="2.4892" width="0.1524" layer="47"/>
<wire x1="-14.0462" y1="2.4892" x2="-15.3162" y2="2.4892" width="0.1524" layer="47"/>
<wire x1="-3.7592" y1="-2.4892" x2="-14.0462" y2="-2.4892" width="0.1524" layer="47"/>
<wire x1="-14.0462" y1="-2.4892" x2="-14.4272" y2="-2.4892" width="0.1524" layer="47"/>
<wire x1="-14.0462" y1="2.4892" x2="-14.0462" y2="-2.4892" width="0.1524" layer="47"/>
<wire x1="-14.0462" y1="2.4892" x2="-14.1732" y2="2.2352" width="0.1524" layer="47"/>
<wire x1="-14.0462" y1="2.4892" x2="-13.9192" y2="2.2352" width="0.1524" layer="47"/>
<wire x1="-14.1732" y1="2.2352" x2="-13.9192" y2="2.2352" width="0.1524" layer="47"/>
<wire x1="-14.0462" y1="-2.4892" x2="-14.1732" y2="-2.2352" width="0.1524" layer="47"/>
<wire x1="-14.0462" y1="-2.4892" x2="-13.9192" y2="-2.2352" width="0.1524" layer="47"/>
<wire x1="-14.1732" y1="-2.2352" x2="-13.9192" y2="-2.2352" width="0.1524" layer="47"/>
<text x="-15.2146" y="-6.5532" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX16Y53D0T</text>
<text x="-15.3924" y="-8.4836" size="1.27" layer="47" ratio="6" rot="SR0">1st Mtg Padstyle: RX83Y63D0T</text>
<text x="-15.5702" y="-10.3632" size="1.27" layer="47" ratio="6" rot="SR0">2nd Mtg Padstyle: RX71Y75D0T</text>
<text x="-16.1544" y="-12.2936" size="1.27" layer="47" ratio="6" rot="SR0">3rd Mtg Padstyle: EX70Y70D70P</text>
<text x="-16.3576" y="-14.1732" size="1.27" layer="47" ratio="6" rot="SR0">Left Mtg Padstyle: EX60Y60D30P</text>
<text x="-16.9418" y="-16.1036" size="1.27" layer="47" ratio="6" rot="SR0">Right Mtg Padstyle: EX60Y60D30P</text>
<text x="-14.8082" y="-17.9832" size="1.27" layer="47" ratio="6" rot="SR0">Alt Padstyle 1: OX60Y90D30P</text>
<text x="-14.8082" y="-19.9136" size="1.27" layer="47" ratio="6" rot="SR0">Alt Padstyle 2: OX90Y60D30P</text>
<text x="-4.7244" y="5.842" size="0.635" layer="47" ratio="4" rot="SR0">0.026in/0.65mm</text>
<text x="-4.0386" y="9.017" size="0.635" layer="47" ratio="4" rot="SR0">0.315in/8.001mm</text>
<text x="-4.0386" y="11.557" size="0.635" layer="47" ratio="4" rot="SR0">0.244in/6.198mm</text>
<text x="-4.0386" y="14.097" size="0.635" layer="47" ratio="4" rot="SR0">0.295in/7.493mm</text>
<text x="6.8072" y="2.1844" size="0.635" layer="47" ratio="4" rot="SR0">0in/0mm</text>
<text x="-16.8148" y="2.1336" size="0.635" layer="47" ratio="4" rot="SR0">-0.005in/-0.127mm</text>
<text x="-19.9898" y="0.8636" size="0.635" layer="47" ratio="4" rot="SR0">-0.105in/-2.667mm</text>
<text x="-19.6596" y="2.1844" size="0.635" layer="47" ratio="4" rot="SR0">0in/0mm</text>
<text x="-22.6314" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.197in/5.004mm</text>
<wire x1="-3.8608" y1="-2.6416" x2="3.8608" y2="-2.6416" width="0.1524" layer="21"/>
<wire x1="3.8608" y1="-2.6416" x2="3.8608" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="-3.8608" y1="-1.397" x2="-3.8608" y2="-2.6416" width="0.1524" layer="21"/>
<wire x1="-5.2832" y1="2.4892" x2="-6.0452" y2="2.4892" width="0.508" layer="21" curve="-180"/>
<wire x1="-6.0452" y1="2.4892" x2="-5.2832" y2="2.5146" width="0.508" layer="21" curve="-180"/>
<text x="-1.7272" y="1.8796" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Value</text>
<wire x1="-3.7592" y1="-2.4892" x2="3.7592" y2="-2.4892" width="0.1524" layer="51"/>
<wire x1="3.7592" y1="-2.4892" x2="3.7592" y2="2.4892" width="0.1524" layer="51"/>
<wire x1="3.7592" y1="2.4892" x2="-3.7592" y2="2.4892" width="0.1524" layer="51"/>
<wire x1="-3.7592" y1="2.4892" x2="-3.7592" y2="-2.4892" width="0.1524" layer="51"/>
<wire x1="-0.9144" y1="0.6096" x2="-1.6764" y2="0.5842" width="0.508" layer="51" curve="-180"/>
<wire x1="-1.6764" y1="0.5842" x2="-0.9144" y2="0.6096" width="0.508" layer="51" curve="-180"/>
<wire x1="-5.2832" y1="2.4892" x2="-6.0452" y2="2.4892" width="0.508" layer="22" curve="-180"/>
<wire x1="-6.0452" y1="2.4892" x2="-5.2832" y2="2.5146" width="0.508" layer="22" curve="-180"/>
<text x="-3.2766" y="1.8796" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
</package>
</packages>
<symbols>
<symbol name="CONN5_ZX62-AB-5PA">
<pin name="VCC" x="0" y="0" visible="pad" length="middle" direction="pas"/>
<pin name="D-" x="0" y="-2.54" visible="pad" length="middle" direction="pas"/>
<pin name="D+" x="0" y="-5.08" visible="pad" length="middle" direction="pas"/>
<pin name="ID" x="0" y="-7.62" visible="pad" length="middle" direction="pas"/>
<pin name="GND" x="0" y="-10.16" visible="pad" length="middle" direction="pas"/>
<wire x1="10.16" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="5.08" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="5.08" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="5.08" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-10.16" x2="5.08" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="10.16" y1="0" x2="8.89" y2="0.8382" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="8.89" y2="-1.7018" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="8.89" y2="-4.2418" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="8.89" y2="-6.7818" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-10.16" x2="8.89" y2="-9.3218" width="0.1524" layer="94"/>
<wire x1="10.16" y1="0" x2="8.89" y2="-0.8382" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="8.89" y2="-3.3782" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="8.89" y2="-5.9182" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="8.89" y2="-8.4582" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-10.16" x2="8.89" y2="-10.9982" width="0.1524" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-12.7" x2="12.7" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="12.7" y1="-12.7" x2="12.7" y2="2.54" width="0.1524" layer="94"/>
<wire x1="12.7" y1="2.54" x2="5.08" y2="2.54" width="0.1524" layer="94"/>
<text x="4.1656" y="5.3086" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ZX62-AB-5PA(31)" prefix="J">
<gates>
<gate name="A" symbol="CONN5_ZX62-AB-5PA" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CONN5_ZX62-AB-5PA_HIR">
<connects>
<connect gate="A" pin="D+" pad="3"/>
<connect gate="A" pin="D-" pad="2"/>
<connect gate="A" pin="GND" pad="5"/>
<connect gate="A" pin="ID" pad="4"/>
<connect gate="A" pin="VCC" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2022 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="DIGI-KEY_PART_NUMBER_1" value="H125279CT-ND" constant="no"/>
<attribute name="DIGI-KEY_PART_NUMBER_2" value="H125279DKR-ND" constant="no"/>
<attribute name="DIGI-KEY_PART_NUMBER_3" value="H125279TR-ND" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="ZX62-AB-5PA(31)" constant="no"/>
<attribute name="MFR_NAME" value="Hirose" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="M50-3600542R">
<packages>
<package name="HARWIN_M50-3600542R">
<circle x="-3.61" y="-2.355" radius="0.1" width="0.2" layer="21"/>
<circle x="-3.61" y="-2.355" radius="0.1" width="0.2" layer="51"/>
<wire x1="-3.175" y1="1.7" x2="3.175" y2="1.7" width="0.127" layer="51"/>
<wire x1="-3.175" y1="-1.7" x2="3.175" y2="-1.7" width="0.127" layer="51"/>
<wire x1="-3.26" y1="1.7" x2="-3.26" y2="-1.7" width="0.127" layer="21"/>
<wire x1="3.26" y1="1.7" x2="3.26" y2="-1.7" width="0.127" layer="21"/>
<wire x1="-3.425" y1="3.5" x2="3.425" y2="3.5" width="0.05" layer="39"/>
<wire x1="-3.425" y1="-3.5" x2="3.425" y2="-3.5" width="0.05" layer="39"/>
<wire x1="-3.425" y1="3.5" x2="-3.425" y2="-3.5" width="0.05" layer="39"/>
<wire x1="3.425" y1="3.5" x2="3.425" y2="-3.5" width="0.05" layer="39"/>
<text x="-3.175" y="-4" size="1.27" layer="27" align="top-left">&gt;VALUE</text>
<text x="-3.175" y="4" size="1.27" layer="25">&gt;NAME</text>
<wire x1="-3.175" y1="1.7" x2="-3.175" y2="-1.7" width="0.127" layer="51"/>
<wire x1="3.175" y1="1.7" x2="3.175" y2="-1.7" width="0.127" layer="51"/>
<smd name="1" x="-2.54" y="-1.94" dx="0.8" dy="2.62" layer="1"/>
<smd name="2" x="-2.54" y="1.94" dx="0.8" dy="2.62" layer="1"/>
<smd name="3" x="-1.27" y="-1.94" dx="0.8" dy="2.62" layer="1"/>
<smd name="4" x="-1.27" y="1.94" dx="0.8" dy="2.62" layer="1"/>
<smd name="5" x="0" y="-1.94" dx="0.8" dy="2.62" layer="1"/>
<smd name="6" x="0" y="1.94" dx="0.8" dy="2.62" layer="1"/>
<smd name="7" x="1.27" y="-1.94" dx="0.8" dy="2.62" layer="1"/>
<smd name="8" x="1.27" y="1.94" dx="0.8" dy="2.62" layer="1"/>
<smd name="9" x="2.54" y="-1.94" dx="0.8" dy="2.62" layer="1"/>
<smd name="10" x="2.54" y="1.94" dx="0.8" dy="2.62" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="M50-3600542R">
<wire x1="7.62" y1="7.62" x2="7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="-7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="7.62" x2="7.62" y2="7.62" width="0.254" layer="94"/>
<text x="-7.62" y="8.89" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-12.7" y="5.08" length="middle" direction="pas"/>
<pin name="2" x="12.7" y="5.08" length="middle" direction="pas" rot="R180"/>
<pin name="3" x="-12.7" y="2.54" length="middle" direction="pas"/>
<pin name="4" x="12.7" y="2.54" length="middle" direction="pas" rot="R180"/>
<pin name="5" x="-12.7" y="0" length="middle" direction="pas"/>
<pin name="6" x="12.7" y="0" length="middle" direction="pas" rot="R180"/>
<pin name="7" x="-12.7" y="-2.54" length="middle" direction="pas"/>
<pin name="8" x="12.7" y="-2.54" length="middle" direction="pas" rot="R180"/>
<pin name="9" x="-12.7" y="-5.08" length="middle" direction="pas"/>
<pin name="10" x="12.7" y="-5.08" length="middle" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="M50-3600542R" prefix="J">
<description>Connector Header Surface Mount 10 position 0.050 Inch (1.27mm)  &lt;a href="https://pricing.snapeda.com/parts/M50-3600542R/Harwin%20Inc./view-part?ref=eda"&gt;Check availability&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="M50-3600542R" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HARWIN_M50-3600542R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="In Stock"/>
<attribute name="DESCRIPTION" value=" Connector Header Surface Mount 10 position 0.050 (1.27mm) "/>
<attribute name="MF" value="Harwin Inc."/>
<attribute name="MP" value="M50-3600542R"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/M50-3600542R/?ref=eda"/>
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
<part name="U2" library="ubloxLib" library_urn="urn:adsk.eagle:library:35818950" deviceset="NINA-B306" device="NINA-B306_NINA_LGA71R_1500X1000X223_PCB" package3d_urn="urn:adsk.eagle:package:35819087/1" value="NINA-B306"/>
<part name="U3" library="LMS8117ADT-3.3" deviceset="LMS8117ADT-3.3" device=""/>
<part name="P+1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="VDD1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U1" library="BMP390L" deviceset="BMP390L" device=""/>
<part name="U4" library="BNO055" deviceset="BNO055" device=""/>
<part name="VDD2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VDD3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VDD4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="J1" library="USBHousing" deviceset="ZX62-AB-5PA(31)" device=""/>
<part name="GND5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="J2" library="M50-3600542R" deviceset="M50-3600542R" device=""/>
<part name="P+2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="GND7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="VDD5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VDD6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U2" gate="A" x="180.34" y="119.38" smashed="yes">
<attribute name="VALUE" x="236.22" y="119.38" size="1.27" layer="96" align="bottom-right"/>
<attribute name="NAME" x="241.808" y="119.38" size="1.27" layer="95"/>
</instance>
<instance part="U3" gate="A" x="40.64" y="114.3" smashed="yes">
<attribute name="NAME" x="35.68181875" y="121.21603125" size="2.08498125" layer="95" ratio="10" rot="SR0"/>
<attribute name="VALUE" x="34.08635" y="100.9387" size="2.082940625" layer="96" ratio="10" rot="SR0"/>
</instance>
<instance part="P+1" gate="VCC" x="-10.16" y="137.16" smashed="yes">
<attribute name="VALUE" x="-12.7" y="134.62" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VDD1" gate="G$1" x="68.58" y="127" smashed="yes">
<attribute name="VALUE" x="66.04" y="124.46" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND1" gate="1" x="12.7" y="93.98" smashed="yes">
<attribute name="VALUE" x="10.16" y="91.44" size="1.778" layer="96"/>
</instance>
<instance part="U1" gate="G$1" x="127" y="134.62" smashed="yes">
<attribute name="NAME" x="116.84" y="148.59" size="1.778" layer="95"/>
<attribute name="VALUE" x="116.84" y="123.19" size="1.778" layer="96" align="top-left"/>
</instance>
<instance part="U4" gate="G$1" x="101.6" y="66.04" smashed="yes">
<attribute name="NAME" x="86.8603" y="81.7962" size="1.270659375" layer="95"/>
<attribute name="VALUE" x="86.8393" y="46.4438" size="1.27248125" layer="96"/>
</instance>
<instance part="VDD2" gate="G$1" x="144.78" y="152.4" smashed="yes">
<attribute name="VALUE" x="142.24" y="149.86" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VDD3" gate="G$1" x="127" y="88.9" smashed="yes">
<attribute name="VALUE" x="124.46" y="86.36" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VDD4" gate="G$1" x="210.82" y="137.16" smashed="yes">
<attribute name="VALUE" x="208.28" y="134.62" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND2" gate="1" x="147.32" y="119.38" smashed="yes">
<attribute name="VALUE" x="144.78" y="116.84" size="1.778" layer="96"/>
</instance>
<instance part="GND3" gate="1" x="127" y="43.18" smashed="yes">
<attribute name="VALUE" x="124.46" y="40.64" size="1.778" layer="96"/>
</instance>
<instance part="J1" gate="A" x="193.04" y="170.18" smashed="yes">
<attribute name="NAME" x="197.2056" y="175.4886" size="2.0828" layer="95" ratio="6" rot="SR0"/>
</instance>
<instance part="GND5" gate="1" x="180.34" y="149.86" smashed="yes">
<attribute name="VALUE" x="177.8" y="147.32" size="1.778" layer="96"/>
</instance>
<instance part="GND4" gate="1" x="208.28" y="0" smashed="yes">
<attribute name="VALUE" x="205.74" y="-2.54" size="1.778" layer="96"/>
</instance>
<instance part="GND6" gate="1" x="254" y="101.6" smashed="yes">
<attribute name="VALUE" x="251.46" y="99.06" size="1.778" layer="96"/>
</instance>
<instance part="J2" gate="G$1" x="317.5" y="73.66" smashed="yes">
<attribute name="NAME" x="309.88" y="82.55" size="1.778" layer="95"/>
<attribute name="VALUE" x="309.88" y="63.5" size="1.778" layer="96"/>
</instance>
<instance part="P+2" gate="VCC" x="299.72" y="88.9" smashed="yes">
<attribute name="VALUE" x="297.18" y="86.36" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND7" gate="1" x="294.64" y="60.96" smashed="yes">
<attribute name="VALUE" x="292.1" y="58.42" size="1.778" layer="96"/>
</instance>
<instance part="GND8" gate="1" x="66.04" y="76.2" smashed="yes">
<attribute name="VALUE" x="63.5" y="73.66" size="1.778" layer="96"/>
</instance>
<instance part="GND9" gate="1" x="71.12" y="50.8" smashed="yes">
<attribute name="VALUE" x="68.58" y="48.26" size="1.778" layer="96"/>
</instance>
<instance part="VDD5" gate="G$1" x="58.42" y="73.66" smashed="yes">
<attribute name="VALUE" x="55.88" y="71.12" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VDD6" gate="G$1" x="96.52" y="144.78" smashed="yes">
<attribute name="VALUE" x="93.98" y="142.24" size="1.778" layer="96" rot="R90"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="VCC" class="0">
<segment>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<wire x1="-10.16" y1="134.62" x2="-10.16" y2="114.3" width="0.1524" layer="91"/>
<pinref part="U3" gate="A" pin="VIN"/>
<wire x1="-10.16" y1="114.3" x2="22.86" y2="114.3" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J2" gate="G$1" pin="1"/>
<wire x1="304.8" y1="78.74" x2="299.72" y2="78.74" width="0.1524" layer="91"/>
<pinref part="P+2" gate="VCC" pin="VCC"/>
<wire x1="299.72" y1="78.74" x2="299.72" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VDD" class="0">
<segment>
<pinref part="VDD1" gate="G$1" pin="VDD"/>
<wire x1="68.58" y1="124.46" x2="68.58" y2="114.3" width="0.1524" layer="91"/>
<pinref part="U3" gate="A" pin="VOUT"/>
<wire x1="68.58" y1="114.3" x2="58.42" y2="114.3" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VDDIO"/>
<wire x1="142.24" y1="142.24" x2="144.78" y2="142.24" width="0.1524" layer="91"/>
<pinref part="VDD2" gate="G$1" pin="VDD"/>
<wire x1="144.78" y1="142.24" x2="144.78" y2="144.78" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="VDD"/>
<wire x1="144.78" y1="144.78" x2="144.78" y2="149.86" width="0.1524" layer="91"/>
<wire x1="142.24" y1="144.78" x2="144.78" y2="144.78" width="0.1524" layer="91"/>
<junction x="144.78" y="144.78"/>
</segment>
<segment>
<pinref part="VDD4" gate="G$1" pin="VDD"/>
<pinref part="U2" gate="A" pin="VCC"/>
<wire x1="210.82" y1="134.62" x2="210.82" y2="129.54" width="0.1524" layer="91"/>
<pinref part="U2" gate="A" pin="VCC_IO"/>
<wire x1="210.82" y1="129.54" x2="210.82" y2="124.46" width="0.1524" layer="91"/>
<wire x1="205.74" y1="124.46" x2="205.74" y2="129.54" width="0.1524" layer="91"/>
<wire x1="205.74" y1="129.54" x2="210.82" y2="129.54" width="0.1524" layer="91"/>
<junction x="210.82" y="129.54"/>
</segment>
<segment>
<pinref part="U4" gate="G$1" pin="VDD"/>
<wire x1="121.92" y1="78.74" x2="127" y2="78.74" width="0.1524" layer="91"/>
<pinref part="VDD3" gate="G$1" pin="VDD"/>
<wire x1="127" y1="78.74" x2="127" y2="86.36" width="0.1524" layer="91"/>
<wire x1="127" y1="78.74" x2="127" y2="76.2" width="0.1524" layer="91"/>
<junction x="127" y="78.74"/>
<pinref part="U4" gate="G$1" pin="VDDIO"/>
<wire x1="127" y1="76.2" x2="121.92" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U4" gate="G$1" pin="NRESET"/>
<pinref part="VDD5" gate="G$1" pin="VDD"/>
<wire x1="81.28" y1="71.12" x2="58.42" y2="71.12" width="0.1524" layer="91"/>
<wire x1="58.42" y1="71.12" x2="58.42" y2="66.04" width="0.1524" layer="91"/>
<junction x="58.42" y="71.12"/>
<pinref part="U4" gate="G$1" pin="NBOOT_LOAD_PIN"/>
<wire x1="58.42" y1="66.04" x2="81.28" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="VDD6" gate="G$1" pin="VDD"/>
<wire x1="96.52" y1="142.24" x2="96.52" y2="139.7" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="SDO"/>
<wire x1="96.52" y1="139.7" x2="96.52" y2="129.54" width="0.1524" layer="91"/>
<wire x1="96.52" y1="129.54" x2="111.76" y2="129.54" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="CSB"/>
<wire x1="111.76" y1="139.7" x2="96.52" y2="139.7" width="0.1524" layer="91"/>
<junction x="96.52" y="139.7"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U3" gate="A" pin="GND"/>
<wire x1="22.86" y1="109.22" x2="12.7" y2="109.22" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="12.7" y1="109.22" x2="12.7" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VSS"/>
<wire x1="142.24" y1="127" x2="147.32" y2="127" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="147.32" y1="127" x2="147.32" y2="121.92" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U4" gate="G$1" pin="GND"/>
<wire x1="121.92" y1="50.8" x2="127" y2="50.8" width="0.1524" layer="91"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="127" y1="50.8" x2="127" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="GNDIO"/>
<wire x1="121.92" y1="53.34" x2="127" y2="53.34" width="0.1524" layer="91"/>
<wire x1="127" y1="53.34" x2="127" y2="50.8" width="0.1524" layer="91"/>
<junction x="127" y="50.8"/>
<pinref part="U4" gate="G$1" pin="PIN15"/>
<wire x1="121.92" y1="58.42" x2="127" y2="58.42" width="0.1524" layer="91"/>
<wire x1="127" y1="58.42" x2="127" y2="55.88" width="0.1524" layer="91"/>
<junction x="127" y="53.34"/>
<pinref part="U4" gate="G$1" pin="PIN16"/>
<wire x1="127" y1="55.88" x2="127" y2="53.34" width="0.1524" layer="91"/>
<wire x1="121.92" y1="55.88" x2="127" y2="55.88" width="0.1524" layer="91"/>
<junction x="127" y="55.88"/>
</segment>
<segment>
<pinref part="J1" gate="A" pin="GND"/>
<wire x1="193.04" y1="160.02" x2="180.34" y2="160.02" width="0.1524" layer="91"/>
<wire x1="180.34" y1="160.02" x2="180.34" y2="152.4" width="0.1524" layer="91"/>
<pinref part="GND5" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U2" gate="A" pin="GND6"/>
<wire x1="185.42" y1="12.7" x2="185.42" y2="2.54" width="0.1524" layer="91"/>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="185.42" y1="2.54" x2="187.96" y2="2.54" width="0.1524" layer="91"/>
<pinref part="U2" gate="A" pin="GND12"/>
<wire x1="187.96" y1="2.54" x2="190.5" y2="2.54" width="0.1524" layer="91"/>
<wire x1="190.5" y1="2.54" x2="193.04" y2="2.54" width="0.1524" layer="91"/>
<wire x1="193.04" y1="2.54" x2="195.58" y2="2.54" width="0.1524" layer="91"/>
<wire x1="195.58" y1="2.54" x2="198.12" y2="2.54" width="0.1524" layer="91"/>
<wire x1="198.12" y1="2.54" x2="203.2" y2="2.54" width="0.1524" layer="91"/>
<wire x1="203.2" y1="2.54" x2="205.74" y2="2.54" width="0.1524" layer="91"/>
<wire x1="205.74" y1="2.54" x2="208.28" y2="2.54" width="0.1524" layer="91"/>
<wire x1="187.96" y1="12.7" x2="187.96" y2="2.54" width="0.1524" layer="91"/>
<junction x="187.96" y="2.54"/>
<pinref part="U2" gate="A" pin="GND14"/>
<wire x1="190.5" y1="12.7" x2="190.5" y2="2.54" width="0.1524" layer="91"/>
<junction x="190.5" y="2.54"/>
<pinref part="U2" gate="A" pin="GND26"/>
<wire x1="193.04" y1="12.7" x2="193.04" y2="2.54" width="0.1524" layer="91"/>
<junction x="193.04" y="2.54"/>
<pinref part="U2" gate="A" pin="GND30"/>
<wire x1="195.58" y1="12.7" x2="195.58" y2="2.54" width="0.1524" layer="91"/>
<junction x="195.58" y="2.54"/>
<pinref part="U2" gate="A" pin="GND53"/>
<wire x1="198.12" y1="12.7" x2="198.12" y2="2.54" width="0.1524" layer="91"/>
<junction x="198.12" y="2.54"/>
<pinref part="U2" gate="A" pin="EGP56"/>
<wire x1="203.2" y1="12.7" x2="203.2" y2="2.54" width="0.1524" layer="91"/>
<junction x="203.2" y="2.54"/>
<pinref part="U2" gate="A" pin="EGP67"/>
<wire x1="231.14" y1="12.7" x2="231.14" y2="2.54" width="0.1524" layer="91"/>
<wire x1="231.14" y1="2.54" x2="228.6" y2="2.54" width="0.1524" layer="91"/>
<junction x="208.28" y="2.54"/>
<pinref part="U2" gate="A" pin="EGP57"/>
<wire x1="228.6" y1="2.54" x2="226.06" y2="2.54" width="0.1524" layer="91"/>
<wire x1="226.06" y1="2.54" x2="223.52" y2="2.54" width="0.1524" layer="91"/>
<wire x1="223.52" y1="2.54" x2="220.98" y2="2.54" width="0.1524" layer="91"/>
<wire x1="220.98" y1="2.54" x2="218.44" y2="2.54" width="0.1524" layer="91"/>
<wire x1="218.44" y1="2.54" x2="215.9" y2="2.54" width="0.1524" layer="91"/>
<wire x1="215.9" y1="2.54" x2="213.36" y2="2.54" width="0.1524" layer="91"/>
<wire x1="213.36" y1="2.54" x2="210.82" y2="2.54" width="0.1524" layer="91"/>
<wire x1="210.82" y1="2.54" x2="208.28" y2="2.54" width="0.1524" layer="91"/>
<wire x1="205.74" y1="12.7" x2="205.74" y2="2.54" width="0.1524" layer="91"/>
<junction x="205.74" y="2.54"/>
<pinref part="U2" gate="A" pin="EGP58"/>
<wire x1="208.28" y1="12.7" x2="208.28" y2="2.54" width="0.1524" layer="91"/>
<pinref part="U2" gate="A" pin="EGP59"/>
<wire x1="210.82" y1="12.7" x2="210.82" y2="2.54" width="0.1524" layer="91"/>
<junction x="210.82" y="2.54"/>
<pinref part="U2" gate="A" pin="EGP60"/>
<wire x1="213.36" y1="12.7" x2="213.36" y2="2.54" width="0.1524" layer="91"/>
<junction x="213.36" y="2.54"/>
<pinref part="U2" gate="A" pin="EGP61"/>
<wire x1="215.9" y1="12.7" x2="215.9" y2="2.54" width="0.1524" layer="91"/>
<junction x="215.9" y="2.54"/>
<pinref part="U2" gate="A" pin="EGP62"/>
<wire x1="218.44" y1="12.7" x2="218.44" y2="2.54" width="0.1524" layer="91"/>
<junction x="218.44" y="2.54"/>
<pinref part="U2" gate="A" pin="EGP63"/>
<wire x1="220.98" y1="12.7" x2="220.98" y2="2.54" width="0.1524" layer="91"/>
<junction x="220.98" y="2.54"/>
<pinref part="U2" gate="A" pin="EGP64"/>
<wire x1="223.52" y1="12.7" x2="223.52" y2="2.54" width="0.1524" layer="91"/>
<junction x="223.52" y="2.54"/>
<pinref part="U2" gate="A" pin="EGP65"/>
<wire x1="226.06" y1="12.7" x2="226.06" y2="2.54" width="0.1524" layer="91"/>
<junction x="226.06" y="2.54"/>
<pinref part="U2" gate="A" pin="EGP66"/>
<wire x1="228.6" y1="12.7" x2="228.6" y2="2.54" width="0.1524" layer="91"/>
<junction x="228.6" y="2.54"/>
</segment>
<segment>
<pinref part="GND6" gate="1" pin="GND"/>
<pinref part="U2" gate="A" pin="EAGP70"/>
<wire x1="254" y1="104.14" x2="246.38" y2="104.14" width="0.1524" layer="91"/>
<pinref part="U2" gate="A" pin="EAGP68"/>
<wire x1="246.38" y1="104.14" x2="241.3" y2="104.14" width="0.1524" layer="91"/>
<wire x1="241.3" y1="109.22" x2="246.38" y2="109.22" width="0.1524" layer="91"/>
<wire x1="246.38" y1="109.22" x2="246.38" y2="106.68" width="0.1524" layer="91"/>
<pinref part="U2" gate="A" pin="EAGP71"/>
<wire x1="246.38" y1="106.68" x2="246.38" y2="104.14" width="0.1524" layer="91"/>
<wire x1="241.3" y1="101.6" x2="246.38" y2="101.6" width="0.1524" layer="91"/>
<wire x1="246.38" y1="101.6" x2="246.38" y2="104.14" width="0.1524" layer="91"/>
<junction x="246.38" y="104.14"/>
<pinref part="U2" gate="A" pin="EAGP69"/>
<wire x1="241.3" y1="106.68" x2="246.38" y2="106.68" width="0.1524" layer="91"/>
<junction x="246.38" y="106.68"/>
</segment>
<segment>
<pinref part="J2" gate="G$1" pin="3"/>
<wire x1="304.8" y1="76.2" x2="294.64" y2="76.2" width="0.1524" layer="91"/>
<pinref part="GND7" gate="1" pin="GND"/>
<wire x1="294.64" y1="76.2" x2="294.64" y2="73.66" width="0.1524" layer="91"/>
<wire x1="294.64" y1="73.66" x2="294.64" y2="63.5" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$1" pin="5"/>
<wire x1="304.8" y1="73.66" x2="294.64" y2="73.66" width="0.1524" layer="91"/>
<junction x="294.64" y="73.66"/>
</segment>
<segment>
<pinref part="U4" gate="G$1" pin="PS0"/>
<pinref part="GND8" gate="1" pin="GND"/>
<wire x1="66.04" y1="78.74" x2="76.2" y2="78.74" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="PS1"/>
<wire x1="76.2" y1="78.74" x2="81.28" y2="78.74" width="0.1524" layer="91"/>
<wire x1="81.28" y1="76.2" x2="76.2" y2="76.2" width="0.1524" layer="91"/>
<wire x1="76.2" y1="76.2" x2="76.2" y2="78.74" width="0.1524" layer="91"/>
<junction x="76.2" y="78.74"/>
</segment>
<segment>
<pinref part="GND9" gate="1" pin="GND"/>
<wire x1="71.12" y1="53.34" x2="71.12" y2="55.88" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="COM2"/>
<wire x1="71.12" y1="55.88" x2="71.12" y2="58.42" width="0.1524" layer="91"/>
<wire x1="71.12" y1="58.42" x2="81.28" y2="58.42" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="COM3"/>
<wire x1="81.28" y1="55.88" x2="71.12" y2="55.88" width="0.1524" layer="91"/>
<junction x="71.12" y="55.88"/>
</segment>
</net>
<net name="D-" class="0">
<segment>
<pinref part="J1" gate="A" pin="D-"/>
<wire x1="193.04" y1="167.64" x2="175.26" y2="167.64" width="0.1524" layer="91"/>
<label x="172.72" y="167.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="A" pin="USB_DM"/>
<wire x1="241.3" y1="33.02" x2="246.38" y2="33.02" width="0.1524" layer="91"/>
<label x="246.38" y="30.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="D+" class="0">
<segment>
<pinref part="J1" gate="A" pin="D+"/>
<wire x1="193.04" y1="165.1" x2="175.26" y2="165.1" width="0.1524" layer="91"/>
<label x="172.72" y="162.56" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="A" pin="USB_DP"/>
<wire x1="241.3" y1="35.56" x2="246.38" y2="35.56" width="0.1524" layer="91"/>
<label x="246.38" y="35.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="VBUS" class="0">
<segment>
<pinref part="J1" gate="A" pin="VCC"/>
<wire x1="193.04" y1="170.18" x2="180.34" y2="170.18" width="0.1524" layer="91"/>
<wire x1="180.34" y1="170.18" x2="180.34" y2="175.26" width="0.1524" layer="91"/>
<label x="180.34" y="175.26" size="1.778" layer="95"/>
<label x="180.34" y="175.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="A" pin="VBUS"/>
<wire x1="215.9" y1="124.46" x2="215.9" y2="129.54" width="0.1524" layer="91"/>
<label x="215.9" y="132.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="SWDIO" class="0">
<segment>
<pinref part="J2" gate="G$1" pin="2"/>
<wire x1="330.2" y1="78.74" x2="335.28" y2="78.74" width="0.1524" layer="91"/>
<label x="335.28" y="78.74" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="A" pin="SWDIO"/>
<wire x1="241.3" y1="78.74" x2="246.38" y2="78.74" width="0.1524" layer="91"/>
<label x="246.38" y="78.74" size="1.778" layer="95"/>
</segment>
</net>
<net name="SWCLK" class="0">
<segment>
<pinref part="J2" gate="G$1" pin="4"/>
<wire x1="330.2" y1="76.2" x2="335.28" y2="76.2" width="0.1524" layer="91"/>
<label x="335.28" y="76.2" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="A" pin="SWDCLK"/>
<wire x1="241.3" y1="81.28" x2="246.38" y2="81.28" width="0.1524" layer="91"/>
<label x="246.38" y="81.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="SWO" class="0">
<segment>
<pinref part="J2" gate="G$1" pin="6"/>
<wire x1="330.2" y1="73.66" x2="335.28" y2="73.66" width="0.1524" layer="91"/>
<label x="335.28" y="73.66" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="A" pin="GPIO_8/P1.00/TRACE_D0/SWO"/>
<wire x1="175.26" y1="96.52" x2="170.18" y2="96.52" width="0.1524" layer="91"/>
<label x="167.64" y="96.52" size="1.778" layer="95"/>
</segment>
</net>
<net name="NC1" class="0">
<segment>
<pinref part="J2" gate="G$1" pin="8"/>
<wire x1="330.2" y1="71.12" x2="335.28" y2="71.12" width="0.1524" layer="91"/>
<label x="335.28" y="71.12" size="1.778" layer="95"/>
</segment>
</net>
<net name="NRESET" class="0">
<segment>
<pinref part="J2" gate="G$1" pin="10"/>
<wire x1="330.2" y1="68.58" x2="335.28" y2="68.58" width="0.1524" layer="91"/>
<label x="335.28" y="68.58" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="A" pin="RESET_N"/>
<wire x1="241.3" y1="86.36" x2="246.38" y2="86.36" width="0.1524" layer="91"/>
<label x="246.38" y="86.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="NC2" class="0">
<segment>
<pinref part="J2" gate="G$1" pin="7"/>
<wire x1="304.8" y1="71.12" x2="302.26" y2="71.12" width="0.1524" layer="91"/>
<label x="299.72" y="71.12" size="1.778" layer="95"/>
</segment>
</net>
<net name="BNO_INT" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="INT"/>
<wire x1="121.92" y1="68.58" x2="127" y2="68.58" width="0.1524" layer="91"/>
<label x="127" y="68.58" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCL_IMU" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="COM1"/>
<wire x1="81.28" y1="60.96" x2="76.2" y2="60.96" width="0.1524" layer="91"/>
<label x="68.58" y="60.96" size="1.778" layer="95"/>
</segment>
</net>
<net name="SDA_IMU" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="COM0"/>
<wire x1="81.28" y1="63.5" x2="76.2" y2="63.5" width="0.1524" layer="91"/>
<label x="68.58" y="63.5" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCK_AUX" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="SCK"/>
<wire x1="111.76" y1="134.62" x2="106.68" y2="134.62" width="0.1524" layer="91"/>
<label x="101.6" y="134.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="SDA_AUX" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="SDI"/>
<wire x1="111.76" y1="132.08" x2="106.68" y2="132.08" width="0.1524" layer="91"/>
<label x="101.6" y="132.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="BMP_INT" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="INT"/>
<wire x1="142.24" y1="134.62" x2="147.32" y2="134.62" width="0.1524" layer="91"/>
<label x="147.32" y="134.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="NC3" class="0">
<segment>
<pinref part="J2" gate="G$1" pin="9"/>
<wire x1="304.8" y1="68.58" x2="302.26" y2="68.58" width="0.1524" layer="91"/>
<label x="299.72" y="68.58" size="1.778" layer="95"/>
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
