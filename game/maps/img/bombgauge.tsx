<?xml version="1.0" encoding="UTF-8"?>
<tileset name="bombgauge" tilewidth="16" tileheight="32" tilecount="16" columns="8">
 <properties>
  <property name="commoncollision" type="int" value="0"/>
  <property name="row_full" type="int" value="1"/>
  <property name="row_notfull" type="int" value="0"/>
 </properties>
 <image source="bombgauge.png" width="128" height="64"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="1" name="fill" x="6" y="4" width="4" height="24">
    <properties>
     <property name="color" type="color" value="#ffaadfff"/>
     <property name="direction" value="up"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="8">
  <animation>
   <frame tileid="8" duration="100"/>
   <frame tileid="9" duration="100"/>
   <frame tileid="10" duration="100"/>
   <frame tileid="11" duration="100"/>
   <frame tileid="12" duration="100"/>
   <frame tileid="13" duration="100"/>
   <frame tileid="14" duration="100"/>
   <frame tileid="15" duration="100"/>
  </animation>
 </tile>
</tileset>
