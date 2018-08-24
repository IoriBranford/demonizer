<?xml version="1.0" encoding="UTF-8"?>
<tileset name="converted" tilewidth="24" tileheight="32" tilecount="120" columns="6">
 <tileoffset x="-12" y="16"/>
 <properties>
  <property name="colstype" value="direction"/>
  <property name="commonanimation" type="int" value="0"/>
  <property name="commoncollision" type="int" value="0"/>
  <property name="directionangle0" type="float" value="90"/>
  <property name="directiontilestride" type="int" value="3"/>
  <property name="numdirections" type="int" value="2"/>
  <property name="rowname0" value="ArcherF"/>
  <property name="rowname1" value="CatapultOperatorF"/>
  <property name="rowname10" value="aristocrate-f-03"/>
  <property name="rowname11" value="townfolk-adult-f-001"/>
  <property name="rowname12" value="townfolk-adult-f-002"/>
  <property name="rowname13" value="townfolk-adult-f-003"/>
  <property name="rowname14" value="townfolk-adult-f-005"/>
  <property name="rowname15" value="townfolk-adult-f-006"/>
  <property name="rowname16" value="FireArcherF"/>
  <property name="rowname2" value="DancerF"/>
  <property name="rowname3" value="MageF"/>
  <property name="rowname4" value="PikemanF"/>
  <property name="rowname5" value="PriestF"/>
  <property name="rowname6" value="SailorF"/>
  <property name="rowname7" value="SwordsmanF"/>
  <property name="rowname8" value="aristocrate-f-01"/>
  <property name="rowname9" value="aristocrate-f-02"/>
  <property name="rowstype" value="state"/>
 </properties>
 <image source="converted.png" width="144" height="640"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="1" x="7" y="11" width="10" height="10">
    <properties>
     <property name="collidable" type="bool" value="true"/>
     <property name="sensor" type="bool" value="true"/>
    </properties>
    <ellipse/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="1" duration="100"/>
   <frame tileid="2" duration="150"/>
   <frame tileid="1" duration="100"/>
   <frame tileid="0" duration="150"/>
  </animation>
 </tile>
 <tile id="12">
  <animation>
   <frame tileid="13" duration="100"/>
   <frame tileid="14" duration="150"/>
   <frame tileid="13" duration="100"/>
   <frame tileid="12" duration="150"/>
  </animation>
 </tile>
 <tile id="51">
  <animation>
   <frame tileid="52" duration="100"/>
   <frame tileid="53" duration="150"/>
   <frame tileid="52" duration="100"/>
   <frame tileid="51" duration="150"/>
  </animation>
 </tile>
 <tile id="60">
  <animation>
   <frame tileid="61" duration="100"/>
   <frame tileid="62" duration="150"/>
   <frame tileid="61" duration="100"/>
   <frame tileid="60" duration="150"/>
  </animation>
 </tile>
 <tile id="75">
  <animation>
   <frame tileid="76" duration="100"/>
   <frame tileid="77" duration="150"/>
   <frame tileid="76" duration="100"/>
   <frame tileid="75" duration="150"/>
  </animation>
 </tile>
</tileset>
