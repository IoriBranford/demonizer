<?xml version="1.0" encoding="UTF-8"?>
<tileset name="demonshots" tilewidth="32" tileheight="16" tilecount="4" columns="1">
 <tileoffset x="-16" y="8"/>
 <properties>
  <property name="commoncollision" type="int" value="0"/>
  <property name="row_ally" type="int" value="1"/>
  <property name="row_bombpackage" type="int" value="2"/>
  <property name="row_bombshrapnel" type="int" value="3"/>
  <property name="row_player" type="int" value="0"/>
 </properties>
 <image source="demonshots.png" width="32" height="64"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="1" x="-8" y="8" width="16" height="16">
    <ellipse/>
   </object>
  </objectgroup>
 </tile>
</tileset>
