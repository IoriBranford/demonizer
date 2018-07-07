<?xml version="1.0" encoding="UTF-8"?>
<tileset name="house" tilewidth="16" tileheight="16" tilecount="84" columns="12">
 <image source="house.png" width="192" height="112"/>
 <terraintypes>
  <terrain name="Wall" tile="10"/>
  <terrain name="Roof" tile="37"/>
  <terrain name="Rooftop" tile="58"/>
 </terraintypes>
 <tile id="0" terrain=",,,0"/>
 <tile id="1" terrain=",,0,0"/>
 <tile id="2" terrain=",,0,"/>
 <tile id="6">
  <objectgroup draworder="index">
   <object id="1" type="EnemyCover" x="6" y="12" width="4" height="4"/>
  </objectgroup>
 </tile>
 <tile id="9" terrain=",0,,0"/>
 <tile id="10" terrain="0,0,0,0"/>
 <tile id="11" terrain="0,,0,"/>
 <tile id="18" terrain=",0,,">
  <objectgroup draworder="index">
   <object id="1" type="EnemyCover" x="6" y="0" width="4" height="8"/>
  </objectgroup>
 </tile>
 <tile id="19" terrain="0,0,,"/>
 <tile id="20" terrain="0,,,"/>
 <tile id="27" terrain=",,,1"/>
 <tile id="28" terrain=",,1,1"/>
 <tile id="29" terrain=",,1,"/>
 <tile id="36" terrain=",1,,1"/>
 <tile id="37" terrain="1,1,1,1"/>
 <tile id="38" terrain="1,,1,"/>
 <tile id="39" terrain=",,,2"/>
 <tile id="40" terrain=",,2,2"/>
 <tile id="41" terrain=",,2,"/>
 <tile id="45" terrain=",1,,"/>
 <tile id="46" terrain="1,1,,"/>
 <tile id="47" terrain="1,,,"/>
 <tile id="48" terrain=",2,,"/>
 <tile id="49" terrain="2,2,,"/>
 <tile id="50" terrain="2,,,"/>
 <tile id="57" terrain=",2,,2"/>
 <tile id="58" terrain="2,2,2,2"/>
 <tile id="59" terrain="2,,2,"/>
</tileset>
