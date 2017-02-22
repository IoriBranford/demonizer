<?xml version="1.0" encoding="UTF-8"?>
<tileset name="cauldron" tilewidth="32" tileheight="32" tilecount="6" columns="1">
 <tileoffset x="-16" y="16"/>
 <properties>
  <property name="commoncollision" type="int" value="0"/>
  <property name="rowname0" value="lit"/>
  <property name="rowname4" value="unlit"/>
  <property name="rowname5" value="destroyed"/>
 </properties>
 <image source="cauldron.png" width="32" height="192"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="1" x="-12" y="20" width="24" height="24">
    <properties>
     <property name="collidable" type="bool" value="true"/>
    </properties>
    <ellipse/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="67"/>
   <frame tileid="1" duration="67"/>
   <frame tileid="2" duration="67"/>
   <frame tileid="3" duration="67"/>
  </animation>
 </tile>
 <tile id="5">
  <properties>
   <property name="name" value="destroyed"/>
  </properties>
 </tile>
</tileset>
