<?xml version="1.0" encoding="UTF-8"?>
<tileset version="1.2" tiledversion="1.2.1" name="item" tilewidth="48" tileheight="24" tilecount="3" columns="1">
 <tileoffset x="-24" y="12"/>
 <image source="item.png" width="48" height="72"/>
 <tile id="0">
  <properties>
   <property name="name" value="score"/>
  </properties>
 </tile>
 <tile id="1">
  <properties>
   <property name="name" value="wingman"/>
  </properties>
 </tile>
 <tile id="2" type="ItemExtend">
  <properties>
   <property name="name" value="extend"/>
  </properties>
  <objectgroup draworder="index">
   <object id="2" x="0" y="0" width="48" height="24">
    <properties>
     <property name="collidable" type="bool" value="true"/>
     <property name="sensor" type="bool" value="true"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
</tileset>
