<?xml version="1.0" encoding="UTF-8"?>
<tileset name="humanshots" tilewidth="32" tileheight="16" tilecount="28" columns="4">
 <tileoffset x="-24" y="8"/>
 <properties>
  <property name="commoncollision" type="int" value="0"/>
  <property name="row_arrow" type="int" value="2"/>
  <property name="row_ballista" type="int" value="4"/>
  <property name="row_fire" type="int" value="6"/>
  <property name="row_magic" type="int" value="3"/>
  <property name="row_pike" type="int" value="0"/>
  <property name="row_sword" type="int" value="1"/>
  <property name="row_water" type="int" value="5"/>
 </properties>
 <image source="humanshots.png" width="128" height="112"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="1" x="-2" y="14" width="4" height="4">
    <properties>
     <property name="collidable" type="bool" value="true"/>
    </properties>
    <ellipse/>
   </object>
  </objectgroup>
 </tile>
 <tile id="24">
  <animation>
   <frame tileid="24" duration="67"/>
   <frame tileid="25" duration="67"/>
   <frame tileid="26" duration="67"/>
   <frame tileid="27" duration="67"/>
  </animation>
 </tile>
</tileset>
