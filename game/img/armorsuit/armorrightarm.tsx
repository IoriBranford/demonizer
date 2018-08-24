<?xml version="1.0" encoding="UTF-8"?>
<tileset name="armorrightarm" tilewidth="16" tileheight="32" tilecount="3" columns="3">
 <tileoffset x="-16" y="16"/>
 <image source="armorrightarm.png" width="48" height="32"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="1" x="0" y="0" width="12" height="32">
    <properties>
     <property name="collidable" type="bool" value="true"/>
     <property name="sensor" type="bool" value="true"/>
    </properties>
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
