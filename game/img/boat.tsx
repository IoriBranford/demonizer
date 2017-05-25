<?xml version="1.0" encoding="UTF-8"?>
<tileset name="boat" tilewidth="128" tileheight="64" tilecount="1" columns="1">
 <tileoffset x="-64" y="64"/>
 <image source="boat.png" width="128" height="64"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="6" x="-60" y="64" width="48" height="48">
    <properties>
     <property name="collidable" type="bool" value="true"/>
    </properties>
   </object>
   <object id="8" x="12" y="64" width="48" height="48">
    <properties>
     <property name="collidable" type="bool" value="true"/>
    </properties>
    <ellipse/>
   </object>
   <object id="10" x="-12" y="64" width="48" height="48">
    <properties>
     <property name="collidable" type="bool" value="true"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
</tileset>
