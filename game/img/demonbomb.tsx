<?xml version="1.0" encoding="UTF-8"?>
<tileset name="demonbomb" tilewidth="128" tileheight="128" tilecount="8" columns="4">
 <tileoffset x="-64" y="128"/>
 <image source="demonbomb.png" width="512" height="256"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="1" x="0" y="0" width="128" height="128">
    <properties>
     <property name="collidable" type="bool" value="true"/>
     <property name="sensor" type="bool" value="true"/>
    </properties>
    <ellipse/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="50"/>
   <frame tileid="1" duration="50"/>
   <frame tileid="2" duration="50"/>
   <frame tileid="3" duration="50"/>
   <frame tileid="4" duration="50"/>
   <frame tileid="5" duration="50"/>
   <frame tileid="6" duration="50"/>
   <frame tileid="7" duration="50"/>
  </animation>
 </tile>
</tileset>
