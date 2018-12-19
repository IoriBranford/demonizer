<?xml version="1.0" encoding="UTF-8"?>
<tileset version="1.2" tiledversion="1.2.1" name="humanshots" tilewidth="32" tileheight="16" tilecount="52" columns="4">
 <tileoffset x="-24" y="8"/>
 <properties>
  <property name="commoncollision" type="int" value="0"/>
 </properties>
 <image source="humanshots.png" width="128" height="208"/>
 <tile id="0">
  <properties>
   <property name="name" value="pike"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="23" y="7" width="2" height="2">
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
 <tile id="2">
  <properties>
   <property name="name" value="axe"/>
  </properties>
  <animation>
   <frame tileid="2" duration="67"/>
   <frame tileid="3" duration="67"/>
   <frame tileid="6" duration="67"/>
   <frame tileid="7" duration="67"/>
  </animation>
 </tile>
 <tile id="4">
  <properties>
   <property name="name" value="sword"/>
  </properties>
 </tile>
 <tile id="5">
  <properties>
   <property name="name" value="arrow"/>
  </properties>
 </tile>
 <tile id="8">
  <properties>
   <property name="name" value="magic"/>
  </properties>
 </tile>
 <tile id="9">
  <properties>
   <property name="name" value="ballista"/>
  </properties>
 </tile>
 <tile id="12">
  <properties>
   <property name="name" value="water"/>
  </properties>
  <animation>
   <frame tileid="12" duration="67"/>
   <frame tileid="13" duration="67"/>
   <frame tileid="14" duration="67"/>
   <frame tileid="15" duration="67"/>
  </animation>
 </tile>
 <tile id="16">
  <properties>
   <property name="name" value="firearrow"/>
  </properties>
  <animation>
   <frame tileid="16" duration="67"/>
   <frame tileid="17" duration="67"/>
   <frame tileid="18" duration="67"/>
   <frame tileid="19" duration="67"/>
  </animation>
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
   <property name="name" value="blood"/>
  </properties>
  <animation>
   <frame tileid="24" duration="67"/>
   <frame tileid="25" duration="67"/>
   <frame tileid="26" duration="67"/>
   <frame tileid="27" duration="67"/>
  </animation>
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
 <tile id="36">
  <properties>
   <property name="name" value="poisongas"/>
  </properties>
  <animation>
   <frame tileid="36" duration="67"/>
   <frame tileid="37" duration="67"/>
   <frame tileid="38" duration="67"/>
   <frame tileid="39" duration="67"/>
   <frame tileid="40" duration="67"/>
   <frame tileid="41" duration="67"/>
   <frame tileid="42" duration="67"/>
   <frame tileid="43" duration="67"/>
  </animation>
 </tile>
 <tile id="44">
  <properties>
   <property name="name" value="fireblast"/>
  </properties>
  <animation>
   <frame tileid="44" duration="67"/>
   <frame tileid="45" duration="67"/>
   <frame tileid="46" duration="67"/>
   <frame tileid="47" duration="67"/>
   <frame tileid="48" duration="67"/>
   <frame tileid="49" duration="67"/>
   <frame tileid="50" duration="67"/>
   <frame tileid="51" duration="67"/>
  </animation>
 </tile>
</tileset>
