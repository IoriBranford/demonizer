<?xml version="1.0" encoding="UTF-8"?>
<tileset name="imp" tilewidth="64" tileheight="64" tilecount="3" columns="3">
 <image source="imp.png" width="192" height="64"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="4" x="24" y="24" width="16" height="16">
    <properties>
     <property name="category" value="Player"/>
     <property name="mask" value="PlayerShot"/>
    </properties>
    <ellipse/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="125"/>
   <frame tileid="1" duration="125"/>
   <frame tileid="2" duration="125"/>
  </animation>
 </tile>
</tileset>
