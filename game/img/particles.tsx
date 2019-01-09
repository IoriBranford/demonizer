<?xml version="1.0" encoding="UTF-8"?>
<tileset version="1.2" tiledversion="1.2.1" name="particles" tilewidth="4" tileheight="4" tilecount="64" columns="8">
 <tileoffset x="0" y="4"/>
 <properties>
  <property name="commonanimation" type="int" value="0"/>
 </properties>
 <image source="particles.png" width="32" height="32"/>
 <tile id="0">
  <properties>
   <property name="name" value="damage"/>
  </properties>
  <animation>
   <frame tileid="0" duration="100"/>
   <frame tileid="1" duration="100"/>
   <frame tileid="2" duration="100"/>
   <frame tileid="3" duration="100"/>
  </animation>
 </tile>
 <tile id="4">
  <properties>
   <property name="name" value="hypno"/>
  </properties>
 </tile>
 <tile id="8">
  <properties>
   <property name="name" value="guard"/>
  </properties>
 </tile>
 <tile id="16">
  <properties>
   <property name="name" value="powerdot"/>
  </properties>
 </tile>
 <tile id="24">
  <properties>
   <property name="name" value="charge"/>
  </properties>
 </tile>
 <tile id="32">
  <properties>
   <property name="name" value="defeat"/>
  </properties>
 </tile>
 <tile id="40">
  <properties>
   <property name="name" value="death"/>
  </properties>
 </tile>
 <tile id="48">
  <properties>
   <property name="name" value="enemyfire"/>
  </properties>
 </tile>
 <tile id="56">
  <properties>
   <property name="name" value="heal"/>
  </properties>
 </tile>
</tileset>
