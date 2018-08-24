<?xml version="1.0" encoding="UTF-8"?>
<tileset name="demonshots" tilewidth="32" tileheight="16" tilecount="4" columns="1">
 <tileoffset x="-16" y="8"/>
 <properties>
  <property name="commoncollision" type="int" value="0"/>
 </properties>
 <image source="demonshots.png" width="32" height="64"/>
 <tile id="0">
  <properties>
   <property name="name" value="player"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="8" y="0" width="16" height="16">
    <properties>
     <property name="collidable" type="bool" value="true"/>
    </properties>
    <ellipse/>
   </object>
  </objectgroup>
 </tile>
 <tile id="1">
  <properties>
   <property name="name" value="wingman"/>
  </properties>
 </tile>
 <tile id="2">
  <properties>
   <property name="name" value="bombpackage"/>
  </properties>
 </tile>
 <tile id="3">
  <properties>
   <property name="name" value="bombshrapnel"/>
  </properties>
 </tile>
</tileset>
