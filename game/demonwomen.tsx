<?xml version="1.0" encoding="UTF-8"?>
<tileset name="demonwomen" tilewidth="64" tileheight="64" tilecount="39" columns="3">
 <tileoffset x="-32" y="32"/>
 <properties>
  <property name="commonanimation" type="int" value="0"/>
  <property name="commoncollision" type="int" value="0"/>
  <property name="row_archer" type="int" value="12"/>
  <property name="row_civ1" type="int" value="0"/>
  <property name="row_civ2" type="int" value="1"/>
  <property name="row_civ3" type="int" value="2"/>
  <property name="row_civ4" type="int" value="3"/>
  <property name="row_civ5" type="int" value="4"/>
  <property name="row_civ6" type="int" value="5"/>
  <property name="row_civ7" type="int" value="6"/>
  <property name="row_civ8" type="int" value="7"/>
  <property name="row_knight1" type="int" value="8"/>
  <property name="row_knight2" type="int" value="9"/>
  <property name="row_priest" type="int" value="10"/>
  <property name="row_mage" type="int" value="11"/>
 </properties>
 <image source="demonwomen.png" width="192" height="832"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="1" x="-8" y="56" width="16" height="16">
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
