_airblue = [_this,0, grpNull,[grpNull]] call BIS_fnc_param;
_airbluefight = [_this,1, grpNull,[grpNull]] call BIS_fnc_param;
_airhum = [_this,2, [],[[]]] call BIS_fnc_param;
_airpwn1 = [_this,3, [],[[]]] call BIS_fnc_param;
_airpwn2 = [_this,4, [],[[]]] call BIS_fnc_param;

_hum = _airhum select 0;
_pwn1 = _airpwn1 select 0;
_pwn2 = _airpwn2 select 0;

_pwn1 flyinHeight 50;
_pwn2 flyinHeight 50;
_pwn1 allowFleeing 0;
_pwn2 allowFleeing 0;
_hum allowFleeing 0;

_wpHum = [_airblue,getMarkerPos "hum","CARELESS","FULL","MOVE",1] call ATR_fnc_createWaypoint;
_wpHum = [_airblue,getMarkerPos "hum2","CARELESS","Full","MOVE",2] call ATR_fnc_createWaypoint;
_wpHum = [_airblue,getMarkerPos "humArr","CARELESS","LIMITED","MOVE",3] call ATR_fnc_createWaypoint;

_wpPWN = [_airbluefight,getMarkerPos "pwn","CARELESS","FULL","MOVE",1] call ATR_fnc_createWaypoint;
_wpPWN = [_airbluefight,getMarkerPos "pwn2","CARELESS","FULL","MOVE",2] call ATR_fnc_createWaypoint;
_wpPWN = [_airbluefight,getMarkerPos "pwnArr","RED","NORMAL","HOLD",3] call ATR_fnc_createWaypoint;
_airblue setCurrentWaypoint [_airblue,1];
_airbluefight setCurrentWaypoint [_airbluefight,1];
"SmokeShellGreen" createVehicle (getMarkerPos "evac");
_hum land "GET IN"; //waituntil erforderlich und KI Ballern deaktivieren bis hier angekommen