<?xml version="1.0" encoding="UTF-8"?>
<tileset name="MilitiaCaptain" tilewidth="32" tileheight="32" tilecount="24" columns="6">
 <tileoffset x="-16" y="16"/>
 <properties>
  <property name="colstype" value="state"/>
  <property name="column_attack" type="int" value="3"/>
  <property name="column_fire" type="int" value="5"/>
  <property name="column_move" type="int" value="0"/>
  <property name="commonanimation" type="int" value="0"/>
  <property name="commoncollision" type="int" value="0"/>
  <property name="numdirections" type="int" value="4"/>
  <property name="rowstype" value="direction"/>
 </properties>
 <image source="MilitiaCaptain.png" width="192" height="128"/>
 <tile id="0" type="MilitiaCaptain">
  <properties>
   <property name="name" value="east"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="6" y="8" width="20" height="20">
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
 <tile id="1" type="MilitiaCaptain"/>
 <tile id="2" type="MilitiaCaptain"/>
 <tile id="3" type="MilitiaCaptain">
  <properties>
   <property name="nextanim" value="fire_east"/>
  </properties>
  <animation>
   <frame tileid="3" duration="125"/>
   <frame tileid="4" duration="125"/>
  </animation>
 </tile>
 <tile id="4" type="MilitiaCaptain"/>
 <tile id="5" type="MilitiaCaptain">
  <properties>
   <property name="name" value="fire_east"/>
   <property name="nextanim" value="east"/>
  </properties>
  <animation>
   <frame tileid="5" duration="125"/>
  </animation>
 </tile>
 <tile id="6" type="MilitiaCaptain">
  <properties>
   <property name="name" value="south"/>
  </properties>
 </tile>
 <tile id="7" type="MilitiaCaptain"/>
 <tile id="8" type="MilitiaCaptain"/>
 <tile id="9" type="MilitiaCaptain">
  <properties>
   <property name="nextanim" value="fire_south"/>
  </properties>
  <animation>
   <frame tileid="9" duration="125"/>
   <frame tileid="10" duration="125"/>
  </animation>
 </tile>
 <tile id="10" type="MilitiaCaptain"/>
 <tile id="11" type="MilitiaCaptain">
  <properties>
   <property name="name" value="fire_south"/>
   <property name="nextanim" value="south"/>
  </properties>
  <animation>
   <frame tileid="11" duration="125"/>
  </animation>
 </tile>
 <tile id="12" type="MilitiaCaptain">
  <properties>
   <property name="name" value="west"/>
  </properties>
 </tile>
 <tile id="13" type="MilitiaCaptain"/>
 <tile id="14" type="MilitiaCaptain"/>
 <tile id="15" type="MilitiaCaptain">
  <properties>
   <property name="nextanim" value="fire_west"/>
  </properties>
  <animation>
   <frame tileid="15" duration="125"/>
   <frame tileid="16" duration="125"/>
  </animation>
 </tile>
 <tile id="16" type="MilitiaCaptain"/>
 <tile id="17" type="MilitiaCaptain">
  <properties>
   <property name="name" value="fire_west"/>
   <property name="nextanim" value="west"/>
  </properties>
  <animation>
   <frame tileid="17" duration="125"/>
  </animation>
 </tile>
 <tile id="18" type="MilitiaCaptain">
  <properties>
   <property name="name" value="north"/>
  </properties>
 </tile>
 <tile id="19" type="MilitiaCaptain"/>
 <tile id="20" type="MilitiaCaptain"/>
 <tile id="21" type="MilitiaCaptain">
  <properties>
   <property name="nextanim" value="fire_north"/>
  </properties>
  <animation>
   <frame tileid="21" duration="125"/>
   <frame tileid="22" duration="125"/>
  </animation>
 </tile>
 <tile id="22" type="MilitiaCaptain"/>
 <tile id="23" type="MilitiaCaptain">
  <properties>
   <property name="name" value="fire_north"/>
   <property name="nextanim" value="north"/>
  </properties>
  <animation>
   <frame tileid="23" duration="125"/>
  </animation>
 </tile>
</tileset>
