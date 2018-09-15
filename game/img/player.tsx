<?xml version="1.0" encoding="UTF-8"?>
<tileset name="player" tilewidth="64" tileheight="64" tilecount="28" columns="4">
 <tileoffset x="-32" y="32"/>
 <properties>
  <property name="commoncollision" type="int" value="0"/>
 </properties>
 <image source="player.png" width="256" height="448"/>
 <tile id="0" type="Player">
  <properties>
   <property name="name" value="forward"/>
  </properties>
  <objectgroup draworder="index">
   <object id="4" name="body" x="28" y="28" width="8" height="8">
    <properties>
     <property name="collidable" type="bool" value="true"/>
    </properties>
    <ellipse/>
   </object>
   <object id="7" name="wingman1" x="8" y="40">
    <ellipse/>
   </object>
   <object id="8" name="wingman2" x="56" y="40">
    <ellipse/>
   </object>
   <object id="10" name="wingman3" x="16" y="16">
    <ellipse/>
   </object>
   <object id="11" name="wingman4" x="48" y="16">
    <ellipse/>
   </object>
   <object id="12" name="focuswingman1" x="0" y="8">
    <ellipse/>
   </object>
   <object id="13" name="focuswingman2" x="64" y="8">
    <ellipse/>
   </object>
   <object id="14" name="focuswingman3" x="16" y="-24">
    <ellipse/>
   </object>
   <object id="15" name="focuswingman4" x="48" y="-24">
    <ellipse/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="100"/>
   <frame tileid="1" duration="150"/>
   <frame tileid="2" duration="100"/>
   <frame tileid="3" duration="150"/>
  </animation>
 </tile>
 <tile id="1" type="Player"/>
 <tile id="2" type="Player"/>
 <tile id="3" type="Player"/>
 <tile id="4" type="Player">
  <properties>
   <property name="name" value="lefttilt"/>
   <property name="nextanim" value="left"/>
  </properties>
  <animation>
   <frame tileid="4" duration="67"/>
   <frame tileid="5" duration="67"/>
   <frame tileid="6" duration="67"/>
   <frame tileid="7" duration="67"/>
  </animation>
 </tile>
 <tile id="5" type="Player"/>
 <tile id="6" type="Player"/>
 <tile id="7" type="Player">
  <properties>
   <property name="name" value="leftuntilt"/>
   <property name="nextanim" value="forward"/>
  </properties>
  <animation>
   <frame tileid="7" duration="100"/>
   <frame tileid="6" duration="100"/>
   <frame tileid="5" duration="100"/>
   <frame tileid="4" duration="100"/>
  </animation>
 </tile>
 <tile id="8" type="Player">
  <properties>
   <property name="name" value="left"/>
  </properties>
  <animation>
   <frame tileid="8" duration="100"/>
   <frame tileid="9" duration="100"/>
   <frame tileid="10" duration="100"/>
   <frame tileid="11" duration="100"/>
  </animation>
 </tile>
 <tile id="9" type="Player"/>
 <tile id="10" type="Player"/>
 <tile id="11" type="Player"/>
 <tile id="12" type="Player">
  <properties>
   <property name="name" value="righttilt"/>
   <property name="nextanim" value="right"/>
  </properties>
  <animation>
   <frame tileid="12" duration="100"/>
   <frame tileid="13" duration="100"/>
   <frame tileid="14" duration="100"/>
   <frame tileid="15" duration="100"/>
  </animation>
 </tile>
 <tile id="13" type="Player"/>
 <tile id="14" type="Player"/>
 <tile id="15" type="Player">
  <properties>
   <property name="name" value="rightuntilt"/>
   <property name="nextanim" value="forward"/>
  </properties>
  <animation>
   <frame tileid="15" duration="100"/>
   <frame tileid="14" duration="100"/>
   <frame tileid="13" duration="100"/>
   <frame tileid="12" duration="100"/>
  </animation>
 </tile>
 <tile id="16" type="Player">
  <properties>
   <property name="name" value="right"/>
  </properties>
  <animation>
   <frame tileid="16" duration="100"/>
   <frame tileid="17" duration="100"/>
   <frame tileid="18" duration="100"/>
   <frame tileid="19" duration="100"/>
  </animation>
 </tile>
 <tile id="17" type="Player"/>
 <tile id="18" type="Player"/>
 <tile id="19" type="Player"/>
 <tile id="20" type="Player">
  <properties>
   <property name="name" value="bombready"/>
   <property name="nextanim" value="bomblaunch"/>
  </properties>
  <animation>
   <frame tileid="20" duration="66"/>
   <frame tileid="21" duration="99"/>
   <frame tileid="22" duration="66"/>
   <frame tileid="23" duration="99"/>
   <frame tileid="24" duration="66"/>
   <frame tileid="25" duration="99"/>
  </animation>
 </tile>
 <tile id="21" type="Player"/>
 <tile id="22" type="Player"/>
 <tile id="23" type="Player"/>
 <tile id="24" type="Player"/>
 <tile id="25" type="Player"/>
 <tile id="26" type="Player">
  <properties>
   <property name="name" value="bomblaunch"/>
   <property name="nextanim" value="forward"/>
  </properties>
  <animation>
   <frame tileid="26" duration="66"/>
   <frame tileid="27" duration="99"/>
  </animation>
 </tile>
 <tile id="27" type="Player"/>
</tileset>
