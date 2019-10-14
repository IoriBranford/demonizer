<?xml version="1.0" encoding="UTF-8"?>
<tileset version="1.2" tiledversion="1.2.3" name="catapult" tilewidth="72" tileheight="72" tilecount="24" columns="8">
 <tileoffset x="-36" y="36"/>
 <properties>
  <property name="colstype" value="direction"/>
  <property name="commonanimation" type="int" value="0"/>
  <property name="commoncollision" type="int" value="0"/>
  <property name="numdirections" type="int" value="8"/>
  <property name="row_attack" type="int" value="1"/>
  <property name="row_fire" type="int" value="2"/>
  <property name="row_move" type="int" value="0"/>
  <property name="rowstype" value="state"/>
 </properties>
 <image source="catapult.png" width="576" height="216"/>
 <tile id="0" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="0"/>
   <property name="name" value="e"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="16" y="16" width="40" height="40">
    <properties>
     <property name="collidable" type="bool" value="true"/>
    </properties>
    <ellipse/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="250"/>
  </animation>
 </tile>
 <tile id="1" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="45"/>
   <property name="name" value="se"/>
  </properties>
 </tile>
 <tile id="2" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="90"/>
   <property name="name" value="s"/>
  </properties>
 </tile>
 <tile id="3" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="135"/>
   <property name="name" value="sw"/>
  </properties>
 </tile>
 <tile id="4" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="180"/>
   <property name="name" value="w"/>
  </properties>
 </tile>
 <tile id="5" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="225"/>
   <property name="name" value="nw"/>
  </properties>
 </tile>
 <tile id="6" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="270"/>
   <property name="name" value="n"/>
  </properties>
 </tile>
 <tile id="7" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="315"/>
   <property name="name" value="ne"/>
  </properties>
 </tile>
 <tile id="8" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="0"/>
   <property name="nextanim" value="fire_e"/>
  </properties>
 </tile>
 <tile id="9" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="45"/>
   <property name="nextanim" value="fire_se"/>
  </properties>
 </tile>
 <tile id="10" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="90"/>
   <property name="nextanim" value="fire_s"/>
  </properties>
 </tile>
 <tile id="11" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="135"/>
   <property name="nextanim" value="fire_sw"/>
  </properties>
 </tile>
 <tile id="12" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="180"/>
   <property name="nextanim" value="fire_w"/>
  </properties>
 </tile>
 <tile id="13" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="225"/>
   <property name="nextanim" value="fire_nw"/>
  </properties>
 </tile>
 <tile id="14" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="270"/>
   <property name="nextanim" value="fire_n"/>
  </properties>
 </tile>
 <tile id="15" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="315"/>
   <property name="nextanim" value="fire_ne"/>
  </properties>
 </tile>
 <tile id="16" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="0"/>
   <property name="name" value="fire_e"/>
   <property name="nextanim" value="e"/>
  </properties>
 </tile>
 <tile id="17" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="45"/>
   <property name="name" value="fire_se"/>
   <property name="nextanim" value="se"/>
  </properties>
 </tile>
 <tile id="18" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="90"/>
   <property name="name" value="fire_s"/>
   <property name="nextanim" value="s"/>
  </properties>
 </tile>
 <tile id="19" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="135"/>
   <property name="name" value="fire_sw"/>
   <property name="nextanim" value="sw"/>
  </properties>
 </tile>
 <tile id="20" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="180"/>
   <property name="name" value="fire_w"/>
   <property name="nextanim" value="w"/>
  </properties>
 </tile>
 <tile id="21" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="225"/>
   <property name="name" value="fire_nw"/>
   <property name="nextanim" value="nw"/>
  </properties>
 </tile>
 <tile id="22" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="270"/>
   <property name="name" value="fire_n"/>
   <property name="nextanim" value="n"/>
  </properties>
 </tile>
 <tile id="23" type="Catapult">
  <properties>
   <property name="faceangle" type="float" value="315"/>
   <property name="name" value="fire_ne"/>
   <property name="nextanim" value="ne"/>
  </properties>
 </tile>
</tileset>
