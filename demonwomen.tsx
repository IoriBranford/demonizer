<?xml version="1.0" encoding="UTF-8"?>
<tileset name="demonwomen" tilewidth="64" tileheight="64" tilecount="39" columns="3">
 <properties>
  <property name="commonanimation" value="0"/>
  <property name="commoncollision" value="0"/>
  <property name="row_archer" value="12"/>
  <property name="row_civ1" value="0"/>
  <property name="row_civ2" value="1"/>
  <property name="row_civ3" value="2"/>
  <property name="row_civ4" value="3"/>
  <property name="row_civ5" value="4"/>
  <property name="row_civ6" value="5"/>
  <property name="row_civ7" value="6"/>
  <property name="row_civ8" value="7"/>
  <property name="row_knight1" value="8"/>
  <property name="row_knight2" value="9"/>
  <property name="row_priest" value="10"/>
  <property name="row_wizard" value="11"/>
 </properties>
 <image source="demonwomen.png" width="192" height="832"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="1" x="24" y="24" width="16" height="16">
    <ellipse/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="125"/>
   <frame tileid="1" duration="125"/>
   <frame tileid="2" duration="125"/>
  </animation>
 </tile>
</tileset>
