<?xml version="1.0" encoding="UTF-8"?>
<tileset name="flames" tilewidth="16" tileheight="24" tilecount="12" columns="4">
 <tileoffset x="-8" y="12"/>
 <image source="flames.png" width="64" height="72"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="1" x="-6" y="18" width="12" height="12">
    <properties>
     <property name="collidable" type="bool" value="true"/>
    </properties>
    <ellipse/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="100"/>
   <frame tileid="1" duration="100"/>
   <frame tileid="2" duration="100"/>
   <frame tileid="3" duration="100"/>
   <frame tileid="4" duration="100"/>
   <frame tileid="5" duration="100"/>
   <frame tileid="6" duration="100"/>
   <frame tileid="7" duration="100"/>
   <frame tileid="8" duration="100"/>
   <frame tileid="9" duration="100"/>
   <frame tileid="10" duration="100"/>
   <frame tileid="11" duration="100"/>
  </animation>
 </tile>
</tileset>
