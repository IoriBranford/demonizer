<?xml version="1.0" encoding="UTF-8"?>
<tileset name="powergauge" tilewidth="32" tileheight="32" tilecount="4" columns="4">
 <tileoffset x="-16" y="16"/>
 <properties>
  <property name="commoncollision" type="int" value="0"/>
 </properties>
 <image source="powergauge.png" width="128" height="32"/>
 <tile id="0">
  <properties>
   <property name="name" value="notfull"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" name="power1" x="1" y="16" width="4" height="4">
    <ellipse/>
   </object>
   <object id="2" name="power2" x="5" y="18" width="4" height="4">
    <ellipse/>
   </object>
   <object id="3" name="power3" x="8" y="21" width="4" height="4">
    <ellipse/>
   </object>
   <object id="4" name="power4" x="11" y="24" width="4" height="4">
    <ellipse/>
   </object>
   <object id="5" name="power5" x="13" y="28" width="4" height="4">
    <ellipse/>
   </object>
   <object id="6" name="power6" x="13" y="33" width="4" height="4">
    <ellipse/>
   </object>
   <object id="7" name="power7" x="11" y="37" width="4" height="4">
    <ellipse/>
   </object>
   <object id="8" name="power8" x="8" y="40" width="4" height="4">
    <ellipse/>
   </object>
   <object id="9" name="power9" x="5" y="43" width="4" height="4">
    <ellipse/>
   </object>
   <object id="10" name="power10" x="1" y="45" width="4" height="4">
    <ellipse/>
   </object>
   <object id="11" name="power18" x="-11" y="21" width="4" height="4">
    <ellipse/>
   </object>
   <object id="12" name="power14" x="-14" y="37" width="4" height="4">
    <ellipse/>
   </object>
   <object id="13" name="power15" x="-16" y="33" width="4" height="4">
    <ellipse/>
   </object>
   <object id="14" name="power16" x="-16" y="28" width="4" height="4">
    <ellipse/>
   </object>
   <object id="15" name="power12" x="-8" y="43" width="4" height="4">
    <ellipse/>
   </object>
   <object id="16" name="power11" x="-4" y="45" width="4" height="4">
    <ellipse/>
   </object>
   <object id="17" name="power13" x="-11" y="40" width="4" height="4">
    <ellipse/>
   </object>
   <object id="18" name="power17" x="-14" y="24" width="4" height="4">
    <ellipse/>
   </object>
   <object id="19" name="power19" x="-8" y="18" width="4" height="4">
    <ellipse/>
   </object>
   <object id="20" name="power20" x="-4" y="16" width="4" height="4">
    <ellipse/>
   </object>
  </objectgroup>
 </tile>
 <tile id="1">
  <properties>
   <property name="name" value="full"/>
  </properties>
  <animation>
   <frame tileid="1" duration="67"/>
   <frame tileid="2" duration="67"/>
   <frame tileid="3" duration="67"/>
  </animation>
 </tile>
</tileset>
