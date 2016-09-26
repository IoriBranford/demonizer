<?xml version="1.0" encoding="UTF-8"?>
<tileset name="bombgauge" tilewidth="8" tileheight="32" tilecount="4" columns="4">
 <properties>
  <property name="column_fill" type="int" value="1"/>
  <property name="column_flash" type="int" value="2"/>
  <property name="column_full" type="int" value="3"/>
  <property name="column_shell" type="int" value="0"/>
 </properties>
 <image source="bombgauge.png" width="32" height="32"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="1" name="fill" x="3" y="5" width="2" height="22">
    <properties>
     <property name="color" type="color" value="#ff4b79f1"/>
     <property name="direction" value="up"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="2">
  <animation>
   <frame tileid="2" duration="33"/>
   <frame tileid="3" duration="33"/>
   <frame tileid="2" duration="33"/>
   <frame tileid="3" duration="33"/>
   <frame tileid="2" duration="33"/>
   <frame tileid="3" duration="33"/>
   <frame tileid="2" duration="33"/>
   <frame tileid="3" duration="33"/>
   <frame tileid="2" duration="33"/>
   <frame tileid="3" duration="33"/>
  </animation>
 </tile>
</tileset>
