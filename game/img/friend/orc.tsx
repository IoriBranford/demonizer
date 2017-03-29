<?xml version="1.0" encoding="UTF-8"?>
<tileset name="orc" tilewidth="32" tileheight="32" tilecount="12" columns="3">
 <tileoffset x="-16" y="16"/>
 <properties>
  <property name="commonanimation" type="int" value="0"/>
  <property name="commoncollision" type="int" value="0"/>
  <property name="rowname0" value="down"/>
  <property name="rowname1" value="left"/>
  <property name="rowname2" value="right"/>
  <property name="rowname3" value="up"/>
 </properties>
 <image source="orc.png" width="96" height="128"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="1" x="-12" y="20" width="24" height="24">
    <properties>
     <property name="collidable" type="bool" value="true"/>
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
