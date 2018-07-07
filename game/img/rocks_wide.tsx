<?xml version="1.0" encoding="UTF-8"?>
<tileset name="rocks_wide" tilewidth="64" tileheight="48" tilecount="8" columns="2">
 <tileoffset x="-32" y="16"/>
 <properties>
  <property name="commoncollision" type="int" value="0"/>
 </properties>
 <image source="rocks_wide.png" width="128" height="192"/>
 <tile id="0">
  <properties>
   <property name="destroyedtile" type="int" value="2"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" type="EnemyCover" x="-20" y="24" width="40" height="20"/>
  </objectgroup>
 </tile>
 <tile id="1">
  <properties>
   <property name="destroyedtile" type="int" value="3"/>
  </properties>
 </tile>
 <tile id="4">
  <properties>
   <property name="destroyedtile" type="int" value="6"/>
  </properties>
 </tile>
 <tile id="5">
  <properties>
   <property name="destroyedtile" type="int" value="7"/>
  </properties>
 </tile>
</tileset>
