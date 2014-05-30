//Create units for airfight

_airblue = createGroup West;
_airbluefight = createGroup West;
_airhum = [getMarkerPos "evacHum",300,"B_Heli_Light_01_F",WEST] call bis_fnc_spawnVehicle;
_airpwn1 = [getMarkerPos "evacpwn1",300,"B_Heli_Light_01_armed_F",WEST] call bis_fnc_spawnVehicle;
_airpwn2 = [getMarkerPos "evacpwn2",300,"B_Heli_Light_01_armed_F",WEST] call bis_fnc_spawnVehicle;
_hum = _airhum select 0;
_pwn1 = _airpwn1 select 0;
_pwn2 = _airpwn2 select 0;

[(_airhum select 2)] joinSilent _airblue;
[(_airpwn1 select 2)] joinSilent _airbluefight;
[(_airpwn2 select 2)] joinSilent _airbluefight;
_pwn1 allowDamage false;

[_airblue,_airbluefight,_airhum,_airpwn1,_airpwn2] spawn ATR_fnc_airfightWP;

