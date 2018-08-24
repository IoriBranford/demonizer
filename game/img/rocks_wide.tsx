<?xml version="1.0" encoding="UTF-8"?>
<tileset name="rocks_wide" tilewidth="64" tileheight="48" tilecount="8" columns="2">
 <tileoffset x="-32" y="16"/>
 <properties>
  <property name="commoncollision" type="int" value="0"/>
 </properties>
 <image source="rocks_wide.png" width="128" height="192"/>
 <tile id="0" type="BombTrigger">
  <properties>
   <property name="defeatdroptileid" type="int" value="2"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" type="EnemyCover" x="12" y="8" width="40" height="20"/>
  </objectgroup>
 </tile>
 <tile id="1" type="BombTrigger">
  <properties>
   <property name="defeatdroptileid" type="int" value="3"/>
  </properties>
 </tile>
 <tile id="2" type="EnemyDefeated"/>
 <tile id="3" type="EnemyDefeated"/>
 <tile id="4" type="BombTrigger">
  <properties>
   <property name="defeatdroptileid" type="int" value="6"/>
  </properties>
 </tile>
 <tile id="5" type="BombTrigger">
  <properties>
   <property name="defeatdroptileid" type="int" value="7"/>
  </properties>
 </tile>
 <tile id="6" type="EnemyDefeated"/>
 <tile id="7" type="EnemyDefeated"/>
</tileset>
