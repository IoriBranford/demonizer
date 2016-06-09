<?xml version="1.0" encoding="UTF-8"?>
<tileset name="civmen" tilewidth="24" tileheight="32" tilecount="135" columns="27">
 <properties>
  <property name="column_civ1" value="0"/>
  <property name="column_civ2" value="3"/>
  <property name="column_civ3" value="6"/>
  <property name="column_civ4" value="9"/>
  <property name="column_civ5" value="12"/>
  <property name="column_civ6" value="15"/>
  <property name="column_civ7" value="18"/>
  <property name="column_civ8" value="21"/>
  <property name="column_civ9" value="24"/>
  <property name="commonanimation" value="0"/>
  <property name="commoncollision" value="0"/>
  <property name="row_down" value="2"/>
  <property name="row_ko" value="4"/>
  <property name="row_left" value="3"/>
  <property name="row_right" value="1"/>
  <property name="row_up" value="0"/>
 </properties>
 <image source="civmen.png" width="648" height="160"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="1" x="0" y="4" width="24" height="24">
    <properties>
     <property name="category" value="Enemy"/>
     <property name="mask" value="EnemyShot"/>
    </properties>
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
