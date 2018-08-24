<?xml version="1.0" encoding="UTF-8"?>
<tileset name="siren" tilewidth="64" tileheight="64" tilecount="12" columns="3">
 <tileoffset x="-32" y="32"/>
 <properties>
  <property name="commonanimation" type="int" value="0"/>
  <property name="commoncollision" type="int" value="0"/>
  <property name="rowname0" value="down"/>
  <property name="rowname1" value="left"/>
  <property name="rowname2" value="right"/>
  <property name="rowname3" value="up"/>
 </properties>
 <image source="siren.png" width="192" height="256"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="1" x="16" y="16" width="32" height="32">
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
