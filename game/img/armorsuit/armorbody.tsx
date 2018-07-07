<?xml version="1.0" encoding="UTF-8"?>
<tileset name="armorbody" tilewidth="32" tileheight="32" tilecount="3" columns="3">
 <tileoffset x="-16" y="16"/>
 <image source="armorbody.png" width="96" height="32"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="1" x="-10" y="22" width="20" height="20">
    <properties>
     <property name="collidable" type="bool" value="true"/>
     <property name="sensor" type="bool" value="true"/>
    </properties>
    <ellipse/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="125"/>
   <frame tileid="1" duration="125"/>
   <frame tileid="2" duration="125"/>
   <frame tileid="1" duration="125"/>
  </animation>
 </tile>
</tileset>
