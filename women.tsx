<?xml version="1.0" encoding="UTF-8"?>
<tileset name="women" tilewidth="24" tileheight="32" tilecount="96" columns="24">
 <properties>
  <property name="commonanimation" value="0"/>
  <property name="commonobjectgroup" value="0"/>
  <property name="credit" value="Svetlana Kushnariova lana-chan@yandex.ru CC-BY 3.0 OGA-BY 3.0"/>
  <property name="row_down" value="2"/>
  <property name="row_left" value="3"/>
  <property name="row_right" value="1"/>
  <property name="row_up" value="0"/>
 </properties>
 <image source="women.png" width="576" height="128"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="1" x="0" y="4" width="24" height="24">
    <properties>
     <property name="category" value="NPC"/>
     <property name="mask" value="EnemyShot"/>
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
</tileset>
