<?xml version="1.0" encoding="UTF-8"?>
<tileset name="imp" tilewidth="64" tileheight="64" tilecount="3" columns="3">
 <tileoffset x="-32" y="32"/>
 <image source="imp.png" width="192" height="64"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="4" name="body" x="-4" y="60" width="8" height="8">
    <ellipse/>
   </object>
   <object id="7" name="ally1" x="-24" y="72">
    <properties>
     <property name="sensor" type="bool" value="true"/>
    </properties>
    <ellipse/>
   </object>
   <object id="8" name="ally2" x="24" y="72">
    <properties>
     <property name="sensor" type="bool" value="true"/>
    </properties>
    <ellipse/>
   </object>
   <object id="10" name="ally3" x="-16" y="48">
    <properties>
     <property name="sensor" type="bool" value="true"/>
    </properties>
    <ellipse/>
   </object>
   <object id="11" name="ally4" x="16" y="48">
    <properties>
     <property name="sensor" type="bool" value="true"/>
    </properties>
    <ellipse/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="125"/>
   <frame tileid="1" duration="125"/>
   <frame tileid="2" duration="125"/>
  </animation>
 </tile>
</tileset>
