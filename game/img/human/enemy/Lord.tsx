<?xml version="1.0" encoding="UTF-8"?>
<tileset name="Lord" tilewidth="32" tileheight="32" tilecount="48" columns="12">
 <tileoffset x="-16" y="16"/>
 <properties>
  <property name="colstype" value="state"/>
  <property name="column_attack" type="int" value="3"/>
  <property name="column_fire" type="int" value="5"/>
  <property name="column_move" type="int" value="0"/>
  <property name="column_noshield" type="int" value="6"/>
  <property name="commonanimation" type="int" value="0"/>
  <property name="commoncollision" type="int" value="0"/>
  <property name="numdirections" type="int" value="4"/>
  <property name="rowstype" value="direction"/>
 </properties>
 <image source="Lord.png" width="384" height="128"/>
 <tile id="0">
  <properties>
   <property name="name" value="east"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="-10" y="24" width="20" height="20">
    <properties>
     <property name="collidable" type="bool" value="true"/>
     <property name="sensor" type="bool" value="true"/>
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
 <tile id="3">
  <properties>
   <property name="nextanim" value="fire_east"/>
  </properties>
  <animation>
   <frame tileid="3" duration="125"/>
   <frame tileid="4" duration="125"/>
  </animation>
 </tile>
 <tile id="5">
  <properties>
   <property name="name" value="fire_east"/>
   <property name="nextanim" value="east"/>
  </properties>
  <animation>
   <frame tileid="5" duration="125"/>
  </animation>
 </tile>
 <tile id="12">
  <properties>
   <property name="name" value="south"/>
  </properties>
 </tile>
 <tile id="15">
  <properties>
   <property name="nextanim" value="fire_south"/>
  </properties>
  <animation>
   <frame tileid="15" duration="125"/>
   <frame tileid="16" duration="125"/>
  </animation>
 </tile>
 <tile id="17">
  <properties>
   <property name="name" value="fire_south"/>
   <property name="nextanim" value="south"/>
  </properties>
  <animation>
   <frame tileid="17" duration="125"/>
  </animation>
 </tile>
 <tile id="24">
  <properties>
   <property name="name" value="west"/>
  </properties>
 </tile>
 <tile id="27">
  <properties>
   <property name="nextanim" value="fire_west"/>
  </properties>
  <animation>
   <frame tileid="27" duration="125"/>
   <frame tileid="28" duration="125"/>
  </animation>
 </tile>
 <tile id="29">
  <properties>
   <property name="name" value="fire_west"/>
   <property name="nextanim" value="west"/>
  </properties>
  <animation>
   <frame tileid="29" duration="125"/>
  </animation>
 </tile>
 <tile id="36">
  <properties>
   <property name="name" value="north"/>
  </properties>
 </tile>
 <tile id="39">
  <properties>
   <property name="nextanim" value="fire_north"/>
  </properties>
  <animation>
   <frame tileid="39" duration="125"/>
   <frame tileid="40" duration="125"/>
  </animation>
 </tile>
 <tile id="41">
  <properties>
   <property name="name" value="fire_north"/>
   <property name="nextanim" value="north"/>
  </properties>
  <animation>
   <frame tileid="41" duration="125"/>
  </animation>
 </tile>
</tileset>
