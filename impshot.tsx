<?xml version="1.0" encoding="UTF-8"?>
<tileset name="impshot" tilewidth="16" tileheight="32" tilecount="2" columns="2">
 <properties>
  <property name="commonobjectgroup" value="0"/>
  <property name="credit" value="Master484 http://m484games.ucoz.com/ (CC0 1.0)"/>
 </properties>
 <image source="impshot.png" width="32" height="32"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="3" x="0" y="8" width="16" height="16">
    <properties>
     <property name="category" value="PlayerShot"/>
    </properties>
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
