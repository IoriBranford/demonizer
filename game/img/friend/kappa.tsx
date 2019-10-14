<?xml version="1.0" encoding="UTF-8"?>
<tileset version="1.2" tiledversion="1.2.1" name="kappa" tilewidth="32" tileheight="32" tilecount="12" columns="3">
 <tileoffset x="-16" y="16"/>
 <properties>
  <property name="colstype" value="state"/>
  <property name="commonanimation" type="int" value="0"/>
  <property name="commoncollision" type="int" value="0"/>
  <property name="directionangle0" type="float" value="90"/>
  <property name="numdirections" type="int" value="4"/>
  <property name="rowstype" value="direction"/>
 </properties>
 <image source="kappa.png" width="96" height="128"/>
 <tile id="0" type="Friend">
  <objectgroup draworder="index">
   <object id="1" x="4" y="4" width="24" height="24">
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
 <tile id="1" type="Friend"/>
 <tile id="2" type="Friend"/>
 <tile id="3" type="Friend"/>
 <tile id="4" type="Friend"/>
 <tile id="5" type="Friend"/>
 <tile id="6" type="Friend"/>
 <tile id="7" type="Friend"/>
 <tile id="8" type="Friend"/>
 <tile id="9" type="Friend"/>
 <tile id="10" type="Friend"/>
 <tile id="11" type="Friend"/>
</tileset>
