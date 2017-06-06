<?xml version="1.0" encoding="UTF-8"?>
<tileset name="NAME" tilewidth="24" tileheight="32" tilecount="15" columns="3">
 <tileoffset x="-12" y="16"/>
 <properties>
  <property name="commonanimation" type="int" value="0"/>
  <property name="commoncollision" type="int" value="0"/>
  <property name="direction_east" type="int" value="0"/>
  <property name="numdirections" type="int" value="4"/>
  <property name="rowstype" value="direction"/>
 </properties>
 <image source="NAME.png" width="72" height="160"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="1" x="-10" y="24" width="20" height="20">
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
 <tile id="12">
  <properties>
   <property name="name" value="ko"/>
  </properties>
 </tile>
</tileset>
