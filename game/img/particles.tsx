<?xml version="1.0" encoding="UTF-8"?>
<tileset name="particles" tilewidth="4" tileheight="4" tilecount="16" columns="4">
 <properties>
  <property name="commonanimation" type="int" value="0"/>
 </properties>
 <image source="particles.png" width="16" height="16"/>
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
</tileset>
