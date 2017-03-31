<?xml version="1.0" encoding="UTF-8"?>
<tileset name="humanshots" tilewidth="32" tileheight="16" tilecount="32" columns="4">
 <tileoffset x="-24" y="8"/>
 <properties>
  <property name="commoncollision" type="int" value="0"/>
  <property name="row_arrow" type="int" value="2"/>
  <property name="row_ballista" type="int" value="4"/>
  <property name="row_catapult" type="int" value="5"/>
  <property name="row_fire" type="int" value="7"/>
  <property name="row_magic" type="int" value="3"/>
  <property name="row_pike" type="int" value="0"/>
  <property name="row_sword" type="int" value="1"/>
  <property name="row_water" type="int" value="6"/>
 </properties>
 <image source="humanshots.png" width="128" height="128"/>
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
 <tile id="20">
  <animation>
   <frame tileid="20" duration="67"/>
   <frame tileid="21" duration="67"/>
  </animation>
 </tile>
 <tile id="28">
  <animation>
   <frame tileid="28" duration="67"/>
   <frame tileid="29" duration="67"/>
   <frame tileid="30" duration="67"/>
   <frame tileid="31" duration="67"/>
  </animation>
 </tile>
</tileset>
