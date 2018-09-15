<?xml version="1.0" encoding="UTF-8"?>
<tileset name="wineguards" tilewidth="24" tileheight="32" tilecount="90" columns="18">
 <tileoffset x="-12" y="16"/>
 <properties>
  <property name="colstype" value="state"/>
  <property name="commonanimation" type="int" value="0"/>
  <property name="commoncollision" type="int" value="0"/>
  <property name="numdirections" type="int" value="4"/>
  <property name="rowstype" value="direction"/>
 </properties>
 <image source="wineguards.png" width="432" height="160"/>
 <tile id="0" type="WineCaptain">
  <objectgroup draworder="index">
   <object id="4" type="CollisionEnemy" x="6" y="12" width="12" height="16">
    <properties>
     <property name="sensor" type="bool" value="false"/>
    </properties>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="125"/>
   <frame tileid="1" duration="125"/>
   <frame tileid="2" duration="125"/>
   <frame tileid="1" duration="125"/>
  </animation>
 </tile>
 <tile id="1" type="WineCaptain"/>
 <tile id="2" type="WineCaptain"/>
 <tile id="3" type="WineGuard"/>
 <tile id="4" type="WineGuard"/>
 <tile id="5" type="WineGuard"/>
 <tile id="9" type="WineNun"/>
 <tile id="10" type="WineNun"/>
 <tile id="11" type="WineNun"/>
 <tile id="12" type="WineHighPriest"/>
 <tile id="13" type="WineHighPriest"/>
 <tile id="14" type="WineHighPriest"/>
 <tile id="15" type="WineHighPriestess"/>
 <tile id="16" type="WineHighPriestess"/>
 <tile id="17" type="WineHighPriestess"/>
 <tile id="18" type="WineCaptain"/>
 <tile id="19" type="WineCaptain"/>
 <tile id="20" type="WineCaptain"/>
 <tile id="21" type="WineGuard"/>
 <tile id="22" type="WineGuard"/>
 <tile id="23" type="WineGuard"/>
 <tile id="27" type="WineNun"/>
 <tile id="28" type="WineNun"/>
 <tile id="29" type="WineNun"/>
 <tile id="30" type="WineHighPriest"/>
 <tile id="31" type="WineHighPriest"/>
 <tile id="32" type="WineHighPriest"/>
 <tile id="33" type="WineHighPriestess"/>
 <tile id="34" type="WineHighPriestess"/>
 <tile id="35" type="WineHighPriestess"/>
 <tile id="36" type="WineCaptain"/>
 <tile id="37" type="WineCaptain"/>
 <tile id="38" type="WineCaptain"/>
 <tile id="39" type="WineGuard"/>
 <tile id="40" type="WineGuard"/>
 <tile id="41" type="WineGuard"/>
 <tile id="45" type="WineNun"/>
 <tile id="46" type="WineNun"/>
 <tile id="47" type="WineNun"/>
 <tile id="48" type="WineHighPriest"/>
 <tile id="49" type="WineHighPriest"/>
 <tile id="50" type="WineHighPriest"/>
 <tile id="51" type="WineHighPriestess"/>
 <tile id="52" type="WineHighPriestess"/>
 <tile id="53" type="WineHighPriestess"/>
 <tile id="54" type="WineCaptain"/>
 <tile id="55" type="WineCaptain"/>
 <tile id="56" type="WineCaptain"/>
 <tile id="57" type="WineGuard"/>
 <tile id="58" type="WineGuard"/>
 <tile id="59" type="WineGuard"/>
 <tile id="63" type="WineNun"/>
 <tile id="64" type="WineNun"/>
 <tile id="65" type="WineNun"/>
 <tile id="66" type="WineHighPriest"/>
 <tile id="67" type="WineHighPriest"/>
 <tile id="68" type="WineHighPriest"/>
 <tile id="69" type="WineHighPriestess"/>
 <tile id="70" type="WineHighPriestess"/>
 <tile id="71" type="WineHighPriestess"/>
 <tile id="72" type="WineDefeatedEnemy">
  <properties>
   <property name="name" value="kocaptain"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" type="CollisionEnemy" x="0" y="12" width="24" height="16"/>
  </objectgroup>
 </tile>
 <tile id="73" type="WineDefeatedEnemy"/>
 <tile id="74" type="WineDefeatedEnemy"/>
 <tile id="75" type="WineDefeatedEnemy">
  <properties>
   <property name="name" value="koguard"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" type="CollisionEnemy" x="0" y="13" width="24" height="16"/>
  </objectgroup>
 </tile>
 <tile id="76" type="WineDefeatedEnemy"/>
 <tile id="77" type="WineDefeatedEnemy"/>
 <tile id="78" type="WineDefeatedEnemy">
  <objectgroup draworder="index">
   <object id="1" type="CollisionEnemy" x="0" y="12" width="24" height="16"/>
  </objectgroup>
 </tile>
 <tile id="79" type="WineDefeatedEnemy"/>
 <tile id="80" type="WineDefeatedEnemy"/>
 <tile id="81" type="WineDefeatedEnemy">
  <properties>
   <property name="name" value="konun"/>
  </properties>
  <objectgroup draworder="index">
   <object id="2" type="CollisionEnemy" x="0" y="8" width="24" height="16"/>
  </objectgroup>
 </tile>
 <tile id="82" type="WineDefeatedEnemy"/>
 <tile id="83" type="WineDefeatedEnemy"/>
 <tile id="84" type="WineDefeatedEnemy">
  <properties>
   <property name="name" value="kohighpriest"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" type="CollisionEnemy" x="0" y="8" width="24" height="16"/>
  </objectgroup>
 </tile>
 <tile id="85" type="WineDefeatedEnemy"/>
 <tile id="86" type="WineDefeatedEnemy"/>
 <tile id="87" type="WineDefeatedEnemy">
  <properties>
   <property name="name" value="kohighpriestess"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" type="CollisionEnemy" x="0" y="10" width="24" height="16"/>
  </objectgroup>
 </tile>
 <tile id="88" type="WineDefeatedEnemy"/>
 <tile id="89" type="WineDefeatedEnemy"/>
</tileset>
