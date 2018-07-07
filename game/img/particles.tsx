<?xml version="1.0" encoding="UTF-8"?>
<tileset name="particles" tilewidth="4" tileheight="4" tilecount="32" columns="4">
 <tileoffset x="0" y="4"/>
 <properties>
  <property name="commonanimation" type="int" value="0"/>
 </properties>
 <image source="particles.png" width="16" height="32"/>
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
   <property name="name" value="guard"/>
  </properties>
 </tile>
 <tile id="8">
  <properties>
   <property name="name" value="powerdot"/>
  </properties>
 </tile>
 <tile id="12">
  <properties>
   <property name="name" value="charge"/>
  </properties>
 </tile>
 <tile id="16">
  <properties>
   <property name="name" value="defeat"/>
  </properties>
 </tile>
 <tile id="20">
  <properties>
   <property name="name" value="death"/>
  </properties>
 </tile>
 <tile id="24">
  <properties>
   <property name="name" value="enemyfire"/>
  </properties>
 </tile>
</tileset>
