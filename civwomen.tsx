<?xml version="1.0" encoding="UTF-8"?>
<tileset name="civwomen" tilewidth="24" tileheight="32" tilecount="120" columns="24">
 <properties>
  <property name="column_civ1" type="int" value="0"/>
  <property name="column_civ2" type="int" value="3"/>
  <property name="column_civ3" type="int" value="6"/>
  <property name="column_civ4" type="int" value="9"/>
  <property name="column_civ5" type="int" value="12"/>
  <property name="column_civ6" type="int" value="15"/>
  <property name="column_civ7" type="int" value="18"/>
  <property name="column_civ8" type="int" value="21"/>
  <property name="commonanimation" type="int" value="0"/>
  <property name="commoncollision" type="int" value="0"/>
  <property name="row_down" type="int" value="2"/>
  <property name="row_ko" type="int" value="4"/>
  <property name="row_left" type="int" value="3"/>
  <property name="row_right" type="int" value="1"/>
  <property name="row_up" type="int" value="0"/>
 </properties>
 <image source="civwomen.png" width="576" height="160"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="1" x="2" y="6" width="20" height="20">
    <ellipse/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="125"/>
   <frame tileid="1" duration="125"/>
   <frame tileid="2" duration="125"/>
   <frame tileid="1" duration="125"/>
  </animation>
 </tile>
</tileset>
