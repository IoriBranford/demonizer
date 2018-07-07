<?xml version="1.0" encoding="UTF-8"?>
<tileset name="CatapultOperatorF" tilewidth="24" tileheight="32" tilecount="12" columns="3">
 <tileoffset x="-12" y="16"/>
 <properties>
  <property name="commonanimation" type="int" value="0"/>
  <property name="commoncollision" type="int" value="0"/>
  <property name="numdirections" type="int" value="4"/>
  <property name="rowstype" value="direction"/>
 </properties>
 <image source="CatapultOperatorF.png" width="72" height="128"/>
 <tile id="0" type="CatapultOperator">
  <objectgroup draworder="index">
   <object id="1" x="-10" y="24" width="20" height="20">
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
 <tile id="1" type="CatapultOperator"/>
 <tile id="2" type="CatapultOperator"/>
 <tile id="3" type="CatapultOperator"/>
 <tile id="4" type="CatapultOperator"/>
 <tile id="5" type="CatapultOperator"/>
 <tile id="6" type="CatapultOperator"/>
 <tile id="7" type="CatapultOperator"/>
 <tile id="8" type="CatapultOperator"/>
 <tile id="9" type="CatapultOperator"/>
 <tile id="10" type="CatapultOperator"/>
 <tile id="11" type="CatapultOperator"/>
</tileset>
