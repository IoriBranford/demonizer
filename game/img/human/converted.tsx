<?xml version="1.0" encoding="UTF-8"?>
<tileset version="1.2" tiledversion="1.2.5" name="converted" tilewidth="24" tileheight="32" tilecount="108" columns="6">
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
  <property name="rowname14" value="Townfolk-Adult-F-005"/>
  <property name="rowname15" value="Townfolk-Adult-F-006"/>
  <property name="rowname16" value="FireArcherF"/>
  <property name="rowname17" value="AssassinF"/>
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
 <image source="converted.png" width="144" height="576"/>
 <tile id="0" type="PlayerWingman">
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
 <tile id="1" type="PlayerWingman">
  <properties>
   <property name="name" value="ArcherF"/>
  </properties>
 </tile>
 <tile id="2" type="PlayerWingman"/>
 <tile id="3" type="PlayerWingman"/>
 <tile id="4" type="PlayerWingman"/>
 <tile id="5" type="PlayerWingman"/>
 <tile id="6" type="PlayerWingman"/>
 <tile id="7" type="PlayerWingman">
  <properties>
   <property name="name" value="CatapultOperatorF"/>
  </properties>
 </tile>
 <tile id="8" type="PlayerWingman"/>
 <tile id="9" type="PlayerWingman"/>
 <tile id="10" type="PlayerWingman"/>
 <tile id="11" type="PlayerWingman"/>
 <tile id="12" type="PlayerWingman">
  <animation>
   <frame tileid="13" duration="100"/>
   <frame tileid="14" duration="150"/>
   <frame tileid="13" duration="100"/>
   <frame tileid="12" duration="150"/>
  </animation>
 </tile>
 <tile id="13" type="PlayerWingman">
  <properties>
   <property name="name" value="DancerF"/>
  </properties>
 </tile>
 <tile id="14" type="PlayerWingman"/>
 <tile id="15" type="PlayerWingman"/>
 <tile id="16" type="PlayerWingman"/>
 <tile id="17" type="PlayerWingman"/>
 <tile id="18" type="PlayerWingman"/>
 <tile id="19" type="PlayerWingman">
  <properties>
   <property name="name" value="MageF"/>
  </properties>
 </tile>
 <tile id="20" type="PlayerWingman"/>
 <tile id="21" type="PlayerWingman"/>
 <tile id="22" type="PlayerWingman"/>
 <tile id="23" type="PlayerWingman"/>
 <tile id="24" type="PlayerWingman"/>
 <tile id="25" type="PlayerWingman">
  <properties>
   <property name="name" value="PikemanF"/>
  </properties>
 </tile>
 <tile id="26" type="PlayerWingman"/>
 <tile id="27" type="PlayerWingman"/>
 <tile id="28" type="PlayerWingman"/>
 <tile id="29" type="PlayerWingman"/>
 <tile id="30" type="PlayerWingman"/>
 <tile id="31" type="PlayerWingman">
  <properties>
   <property name="name" value="PriestF"/>
  </properties>
 </tile>
 <tile id="32" type="PlayerWingman"/>
 <tile id="33" type="PlayerWingman"/>
 <tile id="34" type="PlayerWingman"/>
 <tile id="35" type="PlayerWingman"/>
 <tile id="36" type="PlayerWingman"/>
 <tile id="37" type="PlayerWingman">
  <properties>
   <property name="name" value="SailorF"/>
  </properties>
 </tile>
 <tile id="38" type="PlayerWingman"/>
 <tile id="39" type="PlayerWingman"/>
 <tile id="40" type="PlayerWingman"/>
 <tile id="41" type="PlayerWingman"/>
 <tile id="42" type="PlayerWingman"/>
 <tile id="43" type="PlayerWingman">
  <properties>
   <property name="name" value="SwordsmanF"/>
  </properties>
 </tile>
 <tile id="44" type="PlayerWingman"/>
 <tile id="45" type="PlayerWingman"/>
 <tile id="46" type="PlayerWingman"/>
 <tile id="47" type="PlayerWingman"/>
 <tile id="48" type="PlayerWingman"/>
 <tile id="49" type="PlayerWingman">
  <properties>
   <property name="name" value="aristocrate-f-01"/>
  </properties>
 </tile>
 <tile id="50" type="PlayerWingman"/>
 <tile id="51" type="PlayerWingman">
  <animation>
   <frame tileid="52" duration="100"/>
   <frame tileid="53" duration="150"/>
   <frame tileid="52" duration="100"/>
   <frame tileid="51" duration="150"/>
  </animation>
 </tile>
 <tile id="52" type="PlayerWingman"/>
 <tile id="53" type="PlayerWingman"/>
 <tile id="54" type="PlayerWingman"/>
 <tile id="55" type="PlayerWingman">
  <properties>
   <property name="name" value="aristocrate-f-02"/>
  </properties>
 </tile>
 <tile id="56" type="PlayerWingman"/>
 <tile id="57" type="PlayerWingman"/>
 <tile id="58" type="PlayerWingman"/>
 <tile id="59" type="PlayerWingman"/>
 <tile id="60" type="PlayerWingman">
  <animation>
   <frame tileid="61" duration="100"/>
   <frame tileid="62" duration="150"/>
   <frame tileid="61" duration="100"/>
   <frame tileid="60" duration="150"/>
  </animation>
 </tile>
 <tile id="61" type="PlayerWingman">
  <properties>
   <property name="name" value="aristocrate-f-03"/>
  </properties>
 </tile>
 <tile id="62" type="PlayerWingman"/>
 <tile id="63" type="PlayerWingman"/>
 <tile id="64" type="PlayerWingman"/>
 <tile id="65" type="PlayerWingman"/>
 <tile id="66" type="PlayerWingman"/>
 <tile id="67" type="PlayerWingman">
  <properties>
   <property name="name" value="townfolk-adult-f-001"/>
  </properties>
 </tile>
 <tile id="68" type="PlayerWingman"/>
 <tile id="69" type="PlayerWingman"/>
 <tile id="70" type="PlayerWingman"/>
 <tile id="71" type="PlayerWingman"/>
 <tile id="72" type="PlayerWingman"/>
 <tile id="73" type="PlayerWingman">
  <properties>
   <property name="name" value="townfolk-adult-f-002"/>
  </properties>
 </tile>
 <tile id="74" type="PlayerWingman"/>
 <tile id="75" type="PlayerWingman">
  <animation>
   <frame tileid="76" duration="100"/>
   <frame tileid="77" duration="150"/>
   <frame tileid="76" duration="100"/>
   <frame tileid="75" duration="150"/>
  </animation>
 </tile>
 <tile id="76" type="PlayerWingman"/>
 <tile id="77" type="PlayerWingman"/>
 <tile id="78" type="PlayerWingman"/>
 <tile id="79" type="PlayerWingman">
  <properties>
   <property name="name" value="townfolk-adult-f-003"/>
  </properties>
 </tile>
 <tile id="80" type="PlayerWingman"/>
 <tile id="81" type="PlayerWingman"/>
 <tile id="82" type="PlayerWingman"/>
 <tile id="83" type="PlayerWingman"/>
 <tile id="84" type="PlayerWingman"/>
 <tile id="85" type="PlayerWingman">
  <properties>
   <property name="name" value="Townfolk-Adult-F-005"/>
  </properties>
 </tile>
 <tile id="86" type="PlayerWingman"/>
 <tile id="87" type="PlayerWingman"/>
 <tile id="88" type="PlayerWingman"/>
 <tile id="89" type="PlayerWingman"/>
 <tile id="90" type="PlayerWingman"/>
 <tile id="91" type="PlayerWingman">
  <properties>
   <property name="name" value="Townfolk-Adult-F-006"/>
  </properties>
 </tile>
 <tile id="92" type="PlayerWingman"/>
 <tile id="93" type="PlayerWingman"/>
 <tile id="94" type="PlayerWingman"/>
 <tile id="95" type="PlayerWingman"/>
 <tile id="96" type="PlayerWingman"/>
 <tile id="97" type="PlayerWingman">
  <properties>
   <property name="name" value="FireArcherF"/>
  </properties>
 </tile>
 <tile id="98" type="PlayerWingman"/>
 <tile id="99" type="PlayerWingman"/>
 <tile id="100" type="PlayerWingman"/>
 <tile id="101" type="PlayerWingman"/>
 <tile id="102" type="PlayerWingman"/>
 <tile id="103" type="PlayerWingman">
  <properties>
   <property name="name" value="AssassinF"/>
  </properties>
 </tile>
 <tile id="104" type="PlayerWingman"/>
 <tile id="105" type="PlayerWingman"/>
 <tile id="106" type="PlayerWingman"/>
 <tile id="107" type="PlayerWingman"/>
</tileset>
