<?xml version="1.0" encoding="UTF-8"?>
<tileset name="NAME" tilewidth="24" tileheight="32" tilecount="15" columns="3">
 <tileoffset x="-12" y="16"/>
 <properties>
  <property name="commoncollision" type="int" value="0"/>
 </properties>
 <image source="NAME.png" width="72" height="160"/>
 <tile id="0">
  <properties>
   <property name="name" value="up"/>
  </properties>
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
 <tile id="3">
  <properties>
   <property name="name" value="right"/>
  </properties>
  <animation>
   <frame tileid="3" duration="125"/>
   <frame tileid="4" duration="125"/>
   <frame tileid="5" duration="125"/>
   <frame tileid="4" duration="125"/>
  </animation>
 </tile>
 <tile id="6">
  <properties>
   <property name="name" value="down"/>
  </properties>
  <animation>
   <frame tileid="6" duration="125"/>
   <frame tileid="7" duration="125"/>
   <frame tileid="8" duration="125"/>
   <frame tileid="7" duration="125"/>
  </animation>
 </tile>
 <tile id="9">
  <properties>
   <property name="name" value="left"/>
  </properties>
  <animation>
   <frame tileid="9" duration="125"/>
   <frame tileid="10" duration="125"/>
   <frame tileid="11" duration="125"/>
   <frame tileid="10" duration="125"/>
  </animation>
 </tile>
 <tile id="12">
  <properties>
   <property name="name" value="ko"/>
  </properties>
  <animation>
   <frame tileid="12" duration="125"/>
   <frame tileid="13" duration="125"/>
   <frame tileid="14" duration="125"/>
   <frame tileid="13" duration="125"/>
  </animation>
 </tile>
</tileset>
