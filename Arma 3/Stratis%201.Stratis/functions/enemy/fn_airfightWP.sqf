_airblue = [_this,0, grpNull,[grpNull]] call BIS_fnc_param;
_airbluefight = [_this,1, grpNull,[grpNull]] call BIS_fnc_param;
_airredfight = [_this,2, grpNull,[grpNull]] call BIS_fnc_param;
_airhum = [_this,3, [],[[]]] call BIS_fnc_param;
_airpwn1 = [_this,4, [],[[]]] call BIS_fnc_param;
_airpwn2 = [_this,5, [],[[]]] call BIS_fnc_param;
_aircay = [_this,6, [],[[]]] call BIS_fnc_param;

_hum = _airhum select 0;
_pwn1 = _airpwn1 select 0;
_pwn2 = _airpwn2 select 0;
_cay = _aircay select 0;

_pwn1 flyinHeight 50;
_pwn2 flyinHeight 50;

(driver _hum) setCombatMode "BLUE";
(driver _pwn1) setCombatMode "BLUE";
(driver _pwn2) setCombatMode "BLUE";
(driver _cay) setCombatMode "BLUE";

_wpHum = [_airblue,getMarkerPos "hum","CARELESS","FULL","MOVE",1] call ATR_fnc_createWaypoint;
_wpHum = [_airblue,getMarkerPos "hum2","CARELESS","FULL","MOVE",2] call ATR_fnc_createWaypoint;
_wpHum = [_airblue,getMarkerPos "humArr","CARELESS","LIMITED","MOVE",3] call ATR_fnc_createWaypoint;

_wpPWN = [_airbluefight,getMarkerPos "pwn","CARELESS","FULL","MOVE",1] call ATR_fnc_createWaypoint;
_wpPWN = [_airbluefight,getMarkerPos "pwn2","CARELESS","FULL","MOVE",2] call ATR_fnc_createWaypoint;
_wpPWN = [_airbluefight,getMarkerPos "pwnArr","AWARE","NORMAL","HOLD",3] call ATR_fnc_createWaypoint;


_wpCay = [_airredfight,getMarkerPos "cay1","CARELESS","FULL","MOVE",1] call ATR_fnc_createWaypoint;


_airblue setCurrentWaypoint [_airblue,1];
_airbluefight setCurrentWaypoint [_airbluefight,1];
_airredfight setCurrentWaypoint [_airredfight,1];


"SmokeShellGreen" createVehicle (getMarkerPos "evac");
waitUntil {sleep 1, _distance = (_hum distance (getMarkerPos "humArr"));_distance < 200}; 
_wpCay = [_airredfight,getMarkerPos "cay2","AWARE","NORMAL","HOLD",2] call ATR_fnc_createWaypoint;
_hum land "GET IN"; 
(driver _pwn1) setCombatMode "RED";
(driver _pwn2) setCombatMode "RED";
(driver _cay) setCombatMode "RED";
(driver _pwn1) doTarget _cay;
(driver _pwn2) doTarget _cay;
(driver _cay) doTarget _pwn2;
_pwn1 allowFleeing 0;
_pwn2 allowFleeing 0;
_hum allowFleeing 0;
_cay allowFleeing 0;

_pwn1 allowDamage false;
_cay setDamage 0.4;
waitUntil {sleep 0.5;if !alive _pwn2 then {(driver _cay) doTarget _pwn1;(driver _cay) doFire _pwn1;} else {(driver _cay) doTarget _pwn2;(driver _cay) doFire _pwn2;};(driver _pwn1) doTarget _cay;(driver _pwn2) doTarget _cay;(driver _pwn1) doFire _cay;(driver _pwn2) doFire _cay;!alive _cay};
(driver _pwn1) setCombatMode "BLUE";
(driver _pwn2) setCombatMode "BLUE";
