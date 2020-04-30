<?xml version="1.0" encoding="UTF-8"?>
<tileset version="1.2" tiledversion="1.3.3" name="powergauge" tilewidth="128" tileheight="16" tilecount="1" columns="1">
 <image source="powergauge.png" width="128" height="16"/>
 <tile id="0">
  <properties>
   <property name="color" type="color" value="#c05100ff"/>
   <property name="colorlevel1" type="color" value="#c05100ff"/>
   <property name="colorlevel2" type="color" value="#c0a200ff"/>
   <property name="colorlevel3" type="color" value="#c0d900ff"/>
   <property name="colorlevel4" type="color" value="#c0ff00b7"/>
   <property name="colorlevel5" type="color" value="#c0ff0044"/>
   <property name="direction" value="right"/>
   <property name="script" value="UIGauge"/>
  </properties>
  <objectgroup draworder="index" id="2">
   <object id="1" name="fill" x="25" y="9" width="10" height="4"/>
   <object id="2" name="fill" x="35" y="7" width="20" height="6"/>
   <object id="3" name="fill" x="55" y="5" width="30" height="8"/>
   <object id="4" name="fill" x="85" y="3" width="40" height="10"/>
  </objectgroup>
 </tile>
</tileset>
