<?xml version="1.0" encoding="UTF-8"?>
<tileset name="trees_tall" tilewidth="48" tileheight="80" tilecount="3" columns="3">
 <tileoffset x="-24" y="16"/>
 <properties>
  <property name="commoncollision" type="int" value="1"/>
 </properties>
 <image source="trees_tall.png" width="144" height="80"/>
 <tile id="1">
  <objectgroup draworder="index">
   <object id="2" type="EnemyCover" x="8" y="24" width="32" height="32">
    <ellipse/>
   </object>
   <object id="3" type="EnemyCover" x="14" y="12" width="20" height="20">
    <ellipse/>
   </object>
  </objectgroup>
 </tile>
</tileset>
