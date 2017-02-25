<?xml version="1.0" encoding="UTF-8"?>
<tileset name="infwomen" tilewidth="24" tileheight="32" tilecount="75" columns="15">
 <tileoffset x="-12" y="16"/>
 <properties>
  <property name="column_archer" type="int" value="12"/>
  <property name="column_pikeman" type="int" value="0"/>
  <property name="column_swordsman" type="int" value="3"/>
  <property name="column_priest" type="int" value="6"/>
  <property name="column_mage" type="int" value="9"/>
  <property name="commonanimation" type="int" value="0"/>
  <property name="commoncollision" type="int" value="0"/>
  <property name="row_down" type="int" value="2"/>
  <property name="row_ko" type="int" value="4"/>
  <property name="row_left" type="int" value="3"/>
  <property name="row_right" type="int" value="1"/>
  <property name="row_up" type="int" value="0"/>
 </properties>
 <image source="infwomen.png" width="360" height="160"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="1" x="-10" y="24" width="20" height="20">
    <properties>
     <property name="collidable" type="bool" value="true"/>
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
