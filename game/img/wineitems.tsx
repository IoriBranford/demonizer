<?xml version="1.0" encoding="UTF-8"?>
<tileset name="wineitems" tilewidth="8" tileheight="24" tilecount="8" columns="4">
 <tileoffset x="-4" y="2"/>
 <properties>
  <property name="commoncollision" type="int" value="0"/>
 </properties>
 <image source="wineitems.png" width="32" height="48"/>
 <tile id="0" type="ItemLiquor">
  <properties>
   <property name="alcohol" type="float" value="0.02"/>
   <property name="itemtype" value="glass_redwine"/>
   <property name="name" value="glass_redwine"/>
  </properties>
  <objectgroup draworder="index">
   <object id="2" x="0" y="0" width="8" height="24">
    <properties>
     <property name="collidable" type="bool" value="true"/>
     <property name="sensor" type="bool" value="true"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="1" type="ItemLiquor">
  <properties>
   <property name="itemtype" value="glass_mediumwine"/>
   <property name="name" value="glass_mediumwine"/>
  </properties>
 </tile>
 <tile id="2" type="ItemLiquor">
  <properties>
   <property name="itemtype" value="glass_lightwine"/>
   <property name="name" value="glass_lightwine"/>
  </properties>
 </tile>
 <tile id="3" type="ItemLiquor">
  <properties>
   <property name="alcohol" type="float" value="0.02"/>
   <property name="itemtype" value="glass_darkwine"/>
   <property name="name" value="glass_darkwine"/>
  </properties>
 </tile>
 <tile id="4" type="ItemLiquor">
  <properties>
   <property name="alcohol" type="float" value="0.20000000000000001"/>
   <property name="itemtype" value="bottle_redwine"/>
   <property name="name" value="bottle_redwine"/>
  </properties>
 </tile>
 <tile id="5" type="ItemLiquor">
  <properties>
   <property name="alcohol" type="float" value="0.14999999999999999"/>
   <property name="itemtype" value="bottle_mediumwine"/>
   <property name="name" value="bottle_mediumwine"/>
  </properties>
 </tile>
 <tile id="6" type="ItemLiquor">
  <properties>
   <property name="alcohol" type="float" value="0.10000000000000001"/>
   <property name="itemtype" value="bottle_lightwine"/>
   <property name="name" value="bottle_lightwine"/>
  </properties>
 </tile>
 <tile id="7" type="ItemLiquor">
  <properties>
   <property name="alcohol" type="float" value="0.25"/>
   <property name="itemtype" value="bottle_darkwine"/>
   <property name="name" value="bottle_darkwine"/>
  </properties>
 </tile>
</tileset>
