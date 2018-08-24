<?xml version="1.0" encoding="UTF-8"?>
<tileset name="townfolk-child-m-002" tilewidth="24" tileheight="32" tilecount="12" columns="3">
 <tileoffset x="-12" y="16"/>
 <properties>
  <property name="commonanimation" type="int" value="0"/>
  <property name="commoncollision" type="int" value="0"/>
  <property name="numdirections" type="int" value="4"/>
  <property name="rowstype" value="direction"/>
 </properties>
 <image source="townfolk-child-m-002.png" width="72" height="128"/>
 <tile id="0" type="ItemScore">
  <objectgroup draworder="index">
   <object id="1" x="2" y="8" width="20" height="20">
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
 <tile id="1" type="ItemScore"/>
 <tile id="2" type="ItemScore"/>
 <tile id="3" type="ItemScore"/>
 <tile id="4" type="ItemScore"/>
 <tile id="5" type="ItemScore"/>
 <tile id="6" type="ItemScore"/>
 <tile id="7" type="ItemScore"/>
 <tile id="8" type="ItemScore"/>
 <tile id="9" type="ItemScore"/>
 <tile id="10" type="ItemScore"/>
 <tile id="11" type="ItemScore"/>
</tileset>
