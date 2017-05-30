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
  <property name="row_mage" type="int" value="11"/>
  <property name="row_pikeman" type="int" value="8"/>
  <property name="row_priest" type="int" value="10"/>
  <property name="row_swordsman" type="int" value="9"/>
 </properties>
 <image source="demonwomen.png" width="192" height="832"/>
 <tile id="0">
  <properties>
   <property name="name" value="townfolk-adult-f-001"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="-8" y="56" width="16" height="16">
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
  </animation>
 </tile>
 <tile id="3">
  <properties>
   <property name="name" value="townfolk-adult-f-002"/>
  </properties>
 </tile>
 <tile id="6">
  <properties>
   <property name="name" value="townfolk-adult-f-003"/>
  </properties>
 </tile>
 <tile id="9">
  <properties>
   <property name="name" value="townfolk-adult-f-004"/>
  </properties>
 </tile>
 <tile id="12">
  <properties>
   <property name="name" value="townfolk-adult-f-005"/>
  </properties>
 </tile>
 <tile id="15">
  <properties>
   <property name="name" value="townfolk-adult-f-006"/>
  </properties>
 </tile>
 <tile id="18">
  <properties>
   <property name="name" value="noble-f-01"/>
  </properties>
 </tile>
 <tile id="21">
  <properties>
   <property name="name" value="noble-f-03"/>
  </properties>
 </tile>
 <tile id="24">
  <properties>
   <property name="name" value="pikeman-f"/>
  </properties>
 </tile>
 <tile id="27">
  <properties>
   <property name="name" value="swordsman-f"/>
  </properties>
 </tile>
 <tile id="30">
  <properties>
   <property name="name" value="priest-f"/>
  </properties>
 </tile>
 <tile id="33">
  <properties>
   <property name="name" value="mage-f"/>
  </properties>
 </tile>
 <tile id="36">
  <properties>
   <property name="name" value="archer-f"/>
  </properties>
 </tile>
</tileset>
