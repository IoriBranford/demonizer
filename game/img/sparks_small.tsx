<?xml version="1.0" encoding="UTF-8"?>
<tileset name="sparks_small" tilewidth="16" tileheight="16" tilecount="16" columns="8">
 <tileoffset x="-8" y="8"/>
 <properties>
  <property name="commonanimation" type="int" value="0"/>
 </properties>
 <image source="sparks_small.png" width="128" height="32"/>
 <tile id="0">
  <properties>
   <property name="name" value="enemydamage"/>
  </properties>
  <animation>
   <frame tileid="0" duration="16"/>
   <frame tileid="1" duration="16"/>
   <frame tileid="2" duration="16"/>
   <frame tileid="3" duration="16"/>
   <frame tileid="4" duration="16"/>
   <frame tileid="5" duration="16"/>
   <frame tileid="6" duration="16"/>
   <frame tileid="7" duration="16"/>
  </animation>
 </tile>
 <tile id="8">
  <properties>
   <property name="name" value="enemyguard"/>
  </properties>
 </tile>
</tileset>
