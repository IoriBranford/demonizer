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
 <tile id="0" type="Catapult">
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
 <tile id="1" type="Catapult"/>
 <tile id="2" type="Catapult"/>
 <tile id="3" type="Catapult"/>
 <tile id="4" type="Catapult"/>
 <tile id="5" type="Catapult"/>
 <tile id="6" type="Catapult"/>
 <tile id="7" type="Catapult"/>
 <tile id="8" type="Catapult"/>
 <tile id="9" type="Catapult"/>
 <tile id="10" type="Catapult"/>
 <tile id="11" type="Catapult"/>
 <tile id="12" type="Catapult"/>
 <tile id="13" type="Catapult"/>
 <tile id="14" type="Catapult"/>
 <tile id="15" type="Catapult"/>
 <tile id="16" type="Catapult"/>
 <tile id="17" type="Catapult"/>
 <tile id="18" type="Catapult"/>
 <tile id="19" type="Catapult"/>
 <tile id="20" type="Catapult"/>
 <tile id="21" type="Catapult"/>
 <tile id="22" type="Catapult"/>
 <tile id="23" type="Catapult"/>
</tileset>
