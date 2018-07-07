<?xml version="1.0" encoding="UTF-8"?>
<tileset name="humanshots" tilewidth="32" tileheight="16" tilecount="36" columns="4">
 <tileoffset x="-24" y="8"/>
 <properties>
  <property name="commoncollision" type="int" value="0"/>
 </properties>
 <image source="humanshots.png" width="128" height="144"/>
 <tile id="0">
  <properties>
   <property name="name" value="pike"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="-1" y="15" width="2" height="2">
    <properties>
     <property name="collidable" type="bool" value="true"/>
    </properties>
    <ellipse/>
   </object>
  </objectgroup>
 </tile>
 <tile id="1">
  <properties>
   <property name="name" value="holy"/>
  </properties>
 </tile>
 <tile id="4">
  <properties>
   <property name="name" value="sword"/>
  </properties>
 </tile>
 <tile id="8">
  <properties>
   <property name="name" value="arrow"/>
  </properties>
 </tile>
 <tile id="9">
  <properties>
   <property name="name" value="firearrow"/>
  </properties>
  <animation>
   <frame tileid="9" duration="67"/>
   <frame tileid="10" duration="67"/>
   <frame tileid="11" duration="67"/>
  </animation>
 </tile>
 <tile id="12">
  <properties>
   <property name="name" value="magic"/>
  </properties>
 </tile>
 <tile id="16">
  <properties>
   <property name="name" value="ballista"/>
  </properties>
 </tile>
 <tile id="20">
  <properties>
   <property name="name" value="catapult"/>
  </properties>
  <animation>
   <frame tileid="20" duration="67"/>
   <frame tileid="21" duration="67"/>
   <frame tileid="22" duration="67"/>
   <frame tileid="23" duration="67"/>
  </animation>
 </tile>
 <tile id="24">
  <properties>
   <property name="name" value="water"/>
  </properties>
 </tile>
 <tile id="28">
  <properties>
   <property name="name" value="fire"/>
  </properties>
  <animation>
   <frame tileid="28" duration="67"/>
   <frame tileid="29" duration="67"/>
   <frame tileid="30" duration="67"/>
   <frame tileid="31" duration="67"/>
  </animation>
 </tile>
 <tile id="32">
  <properties>
   <property name="name" value="spiritfire"/>
  </properties>
  <animation>
   <frame tileid="32" duration="67"/>
   <frame tileid="33" duration="67"/>
   <frame tileid="34" duration="67"/>
   <frame tileid="35" duration="67"/>
  </animation>
 </tile>
</tileset>
