<?xml version="1.0" encoding="UTF-8"?>
<tileset name="impshot" tilewidth="32" tileheight="16" tilecount="2" columns="1">
 <tileoffset x="-16" y="8"/>
 <properties>
  <property name="commoncollision" type="int" value="0"/>
 </properties>
 <image source="impshot.png" width="32" height="32"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="1" x="-8" y="8" width="16" height="16">
    <ellipse/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="64"/>
   <frame tileid="1" duration="64"/>
  </animation>
 </tile>
 <tile id="1">
  <animation>
   <frame tileid="1" duration="64"/>
   <frame tileid="0" duration="64"/>
  </animation>
 </tile>
</tileset>
