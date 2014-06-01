//Create units for airfight


_airhum = [getMarkerPos "evacHum",300,"B_Heli_Light_01_F",WEST] call bis_fnc_spawnVehicle;
_airpwn1 = [getMarkerPos "evacpwn1",300,"B_Heli_Light_01_armed_F",WEST] call bis_fnc_spawnVehicle;
_airpwn2 = [getMarkerPos "evacpwn2",300,"B_Heli_Light_01_armed_F",WEST] call bis_fnc_spawnVehicle;
_aircay = [getMarkerPos "attackOrc",300,"O_Heli_Light_02_F",EAST] call bis_fnc_spawnVehicle;

hum = _airhum select 0;
_pwn1 = _airpwn1 select 0;
_pwn2 = _airpwn2 select 0;
_cay = _aircay select 0;
_pwn1 allowFleeing 0;
_pwn2 allowFleeing 0;
hum allowFleeing 0;
_cay allowFleeing 0;
hum allowDamage false;
_pwn1 allowDamage false;
_pwn1 setSkill 1;
_pwn2 setSkill 1;




//[_airblue,_airbluefight, _airredfight,_airhum,_airpwn1,_airpwn2, _aircay] spawn ATR_fnc_airfightWP;

_vehicles = [_airhum,_airpwn1,_airpwn2,_aircay];
_vehicles