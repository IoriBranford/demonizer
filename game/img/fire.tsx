<?xml version="1.0" encoding="UTF-8"?>
<tileset version="1.2" tiledversion="1.2.5" name="fire" tilewidth="96" tileheight="128" tilecount="15" columns="5">
 <tileoffset x="-48" y="24"/>
 <image source="fire.png" width="480" height="384"/>
 <tile id="0" type="Fire">
  <properties>
   <property name="name" value="ground"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" type="CollisionEnemy" x="16" y="56" width="60" height="60">
    <ellipse/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="66"/>
   <frame tileid="1" duration="66"/>
   <frame tileid="2" duration="66"/>
   <frame tileid="3" duration="66"/>
   <frame tileid="4" duration="66"/>
  </animation>
 </tile>
 <tile id="1" type="Fire"/>
 <tile id="2" type="Fire"/>
 <tile id="3" type="Fire"/>
 <tile id="4" type="Fire"/>
 <tile id="5" type="Fire">
  <properties>
   <property name="name" value="tree"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" type="CollisionEnemy" x="24" y="72" width="48" height="48">
    <ellipse/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="5" duration="66"/>
   <frame tileid="6" duration="66"/>
   <frame tileid="7" duration="66"/>
   <frame tileid="8" duration="66"/>
   <frame tileid="9" duration="66"/>
  </animation>
 </tile>
 <tile id="6" type="Fire"/>
 <tile id="7" type="Fire"/>
 <tile id="8" type="Fire"/>
 <tile id="9" type="Fire"/>
 <tile id="10" type="FireExtinguished_Ground">
  <properties>
   <property name="name" value="ground_extinguished"/>
  </properties>
  <animation>
   <frame tileid="10" duration="100"/>
   <frame tileid="11" duration="100"/>
   <frame tileid="12" duration="100"/>
   <frame tileid="13" duration="100"/>
   <frame tileid="14" duration="100"/>
  </animation>
 </tile>
 <tile id="11" type="FireExtinguished_Ground"/>
 <tile id="12" type="FireExtinguished_Ground"/>
 <tile id="13" type="FireExtinguished_Ground"/>
 <tile id="14" type="FireExtinguished_Ground"/>
</tileset>
