<?xml version="1.0" encoding="UTF-8"?>
<tileset name="doors_opening" tilewidth="16" tileheight="32" tilecount="15" columns="5">
 <tileoffset x="-8" y="16"/>
 <properties>
  <property name="commoncollision" type="int" value="10"/>
 </properties>
 <image source="doors_opening.png" width="80" height="96"/>
 <tile id="0" type="Door">
  <properties>
   <property name="closedtile" value="wood_int_closed"/>
   <property name="name" value="wood_int_open"/>
  </properties>
 </tile>
 <tile id="1" type="Door">
  <properties>
   <property name="closedtile" value="wood_ext_closed"/>
   <property name="name" value="wood_ext_open"/>
  </properties>
 </tile>
 <tile id="2" type="Door"/>
 <tile id="3" type="Door"/>
 <tile id="4" type="Door"/>
 <tile id="5" type="Door"/>
 <tile id="6" type="Door">
  <properties>
   <property name="name" value="wood_ext_opening"/>
  </properties>
  <animation>
   <frame tileid="6" duration="100"/>
   <frame tileid="1" duration="100"/>
   <frame tileid="6" duration="100"/>
  </animation>
 </tile>
 <tile id="7" type="Door"/>
 <tile id="8" type="Door"/>
 <tile id="9" type="Door"/>
 <tile id="10" type="Door">
  <properties>
   <property name="name" value="wood_int_closed"/>
   <property name="opentile" value="wood_int_open"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="0" y="8" width="16" height="16">
    <properties>
     <property name="collidable" type="bool" value="true"/>
     <property name="sensor" type="bool" value="true"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="11" type="Door">
  <properties>
   <property name="name" value="wood_ext_closed"/>
   <property name="opentile" value="wood_ext_open"/>
  </properties>
 </tile>
 <tile id="12" type="Door"/>
 <tile id="13" type="Door"/>
 <tile id="14" type="Door"/>
</tileset>
