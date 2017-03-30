<?xml version="1.0" encoding="UTF-8"?>
<tileset name="catapult" tilewidth="72" tileheight="72" tilecount="24" columns="8">
 <tileoffset x="-36" y="36"/>
 <properties>
  <property name="column_angle0" type="int" value="0"/>
  <property name="column_angle135" type="int" value="3"/>
  <property name="column_angle180" type="int" value="4"/>
  <property name="column_angle225" type="int" value="5"/>
  <property name="column_angle270" type="int" value="6"/>
  <property name="column_angle315" type="int" value="7"/>
  <property name="column_angle45" type="int" value="1"/>
  <property name="column_angle90" type="int" value="2"/>
  <property name="commonanimation" type="int" value="0"/>
  <property name="commoncollision" type="int" value="0"/>
  <property name="row_empty" type="int" value="2"/>
  <property name="row_windup" type="int" value="0"/>
 </properties>
 <image source="catapult.png" width="576" height="216"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="1" x="-18" y="54" width="36" height="36">
    <properties>
     <property name="collidable" type="bool" value="true"/>
    </properties>
    <ellipse/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="16" duration="967"/>
   <frame tileid="0" duration="250"/>
   <frame tileid="8" duration="500"/>
   <frame tileid="0" duration="33"/>
  </animation>
 </tile>
</tileset>
