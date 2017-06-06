<?xml version="1.0" encoding="UTF-8"?>
<tileset name="catapult" tilewidth="72" tileheight="72" tilecount="24" columns="8">
 <tileoffset x="-36" y="36"/>
 <properties>
  <property name="colstype" value="direction"/>
  <property name="commonanimation" type="int" value="0"/>
  <property name="commoncollision" type="int" value="0"/>
  <property name="direction_east" type="int" value="0"/>
  <property name="numdirections" type="int" value="8"/>
  <property name="row_empty" type="int" value="2"/>
  <property name="row_windup" type="int" value="0"/>
 </properties>
 <image source="catapult.png" width="576" height="216"/>
 <tile id="0">
  <properties>
   <property name="faceangle" type="float" value="0"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="-18" y="54" width="36" height="36">
    <properties>
     <property name="collidable" type="bool" value="true"/>
    </properties>
    <ellipse/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="16" duration="467"/>
   <frame tileid="0" duration="250"/>
   <frame tileid="8" duration="250"/>
   <frame tileid="0" duration="33"/>
  </animation>
 </tile>
 <tile id="1">
  <properties>
   <property name="faceangle" type="float" value="45"/>
  </properties>
 </tile>
 <tile id="2">
  <properties>
   <property name="faceangle" type="float" value="90"/>
  </properties>
 </tile>
 <tile id="3">
  <properties>
   <property name="faceangle" type="float" value="135"/>
  </properties>
 </tile>
 <tile id="4">
  <properties>
   <property name="faceangle" type="float" value="180"/>
  </properties>
 </tile>
 <tile id="5">
  <properties>
   <property name="faceangle" type="float" value="225"/>
  </properties>
 </tile>
 <tile id="6">
  <properties>
   <property name="faceangle" type="float" value="270"/>
  </properties>
 </tile>
 <tile id="7">
  <properties>
   <property name="faceangle" type="float" value="315"/>
  </properties>
 </tile>
</tileset>
