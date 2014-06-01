_airblue = [_this,0, grpNull,[grpNull]] call BIS_fnc_param;
_airbluefight = [_this,1, grpNull,[grpNull]] call BIS_fnc_param;
_airredfight = [_this,2, grpNull,[grpNull]] call BIS_fnc_param;
_airhum = [_this,3, [],[[]]] call BIS_fnc_param;
_airpwn1 = [_this,4, [],[[]]] call BIS_fnc_param;
_airpwn2 = [_this,5, [],[[]]] call BIS_fnc_param;
_aircay = [_this,6, [],[[]]] call BIS_fnc_param;

hum = _airhum select 0;
_pwn1 = _airpwn1 select 0;
_pwn2 = _airpwn2 select 0;
_cay = _aircay select 0;

_pwn1 flyinHeight 50;
_pwn2 flyinHeight 50;

(driver hum) setCombatMode "BLUE";
(driver _pwn1) setCombatMode "BLUE";
(driver _pwn2) setCombatMode "BLUE";
(driver _cay) setCombatMode "BLUE";



_wpH1 = (group Hum) addWaypoint [getMarkerPos "hum",0,1];
_wpH1 setWaypointBehaviour "CARELESS";
_wpH1 setWaypointSpeed "FULL";
_wpH1 setWaypointType "MOVE";
_wpH1 setWaypointCompletionRadius 20;
_wpH1 setWaypointStatements ["true",""];

_wpH2 = (group Hum) addWaypoint [getMarkerPos "hum2",0,2];
_wpH2 setWaypointBehaviour "CARELESS";
_wpH2 setWaypointSpeed "NORMAL";
_wpH2 setWaypointType "MOVE";
_wpH2 setWaypointCompletionRadius 20;
_wpH2 setWaypointStatements ["true",""];

_wpH3 = (group Hum) addWaypoint [getMarkerPos "humArr",0,3];
_wpH3 setWaypointBehaviour "CARELESS";
_wpH3 setWaypointSpeed "LIMITED";
_wpH3 setWaypointType "LOAD";
_wpH3 setWaypointCompletionRadius 10;
_wpH3 setWaypointStatements ["true","(vehicle this) land ""Get In"""];

_wpH4 = (group Hum) addWaypoint [getMarkerPos "humArr",0,4];
_wpH4 setWaypointBehaviour "CARELESS";
_wpH4 setWaypointSpeed "FULL";
_wpH4 setWaypointType "MOVE";
_wpH4 setWaypointCompletionRadius 5;
_wpH4 setWaypointStatements ["Informant1 in (vehicle this)",""];
/*
_wpH5 = (group Hum) addWaypoint [getMarkerPos "humEvac",0,1];
_wpH5 setWaypointBehaviour "CARELESS";
_wpH5 setWaypointSpeed "FULL";
_wpH5 setWaypointType "MOVE";
_wpH5 setWaypointCompletionRadius 20;
_wpH5 setWaypointStatements ["true",""];
*/
/*_wpHum1 = [_airblue,getMarkerPos "hum","CARELESS","FULL","MOVE",1] call ATR_fnc_createWaypoint;
_wpHum2 = [_airblue,getMarkerPos "hum2","CARELESS","FULL","MOVE",2] call ATR_fnc_createWaypoint;
_wpHum3 = [_airblue,getMarkerPos "humArr","CARELESS","LIMITED","MOVE",3] call ATR_fnc_createWaypoint;

_wpPWN = [_airbluefight,getMarkerPos "pwn","CARELESS","FULL","MOVE",1] call ATR_fnc_createWaypoint;
_wpPWN = [_airbluefight,getMarkerPos "pwn2","CARELESS","FULL","MOVE",2] call ATR_fnc_createWaypoint;
_wpPWN = [_airbluefight,getMarkerPos "pwnArr","AWARE","NORMAL","HOLD",3] call ATR_fnc_createWaypoint;


_wpCay = [_airredfight,getMarkerPos "cay1","CARELESS","FULL","MOVE",1] call ATR_fnc_createWaypoint;


_airblue setCurrentWaypoint [_airblue,1];
_airbluefight setCurrentWaypoint [_airbluefight,1];
_airredfight setCurrentWaypoint [_airredfight,1];



waitUntil {sleep 1; _distance = (hum distance (getMarkerPos "humArr"));_distance < 200}; 
_wpCay = [_airredfight,getMarkerPos "cay2","AWARE","NORMAL","HOLD",2] call ATR_fnc_createWaypoint;
//hum land "GET IN"; 
//_wpHum setWaypointStatements ["informant1 in hum","hint'drin'"];
(driver _pwn1) setCombatMode "RED";
(driver _pwn2) setCombatMode "RED";
(driver _cay) setCombatMode "RED";
(driver _pwn1) doTarget _cay;
(driver _pwn2) doTarget _cay;
(driver _cay) doTarget _pwn2;


_cay setDamage 0.6;
waitUntil {sleep 0.5;if !alive _pwn2 then {(driver _cay) doTarget _pwn1;(driver _cay) doFire _pwn1;} else {(driver _cay) doTarget _pwn2;(driver _cay) doFire _pwn2;};(driver _pwn1) doTarget _cay;(driver _pwn2) doTarget _cay;(driver _pwn1) doFire _cay;(driver _pwn2) doFire _cay;!alive _cay};
(driver _pwn1) setCombatMode "BLUE";
(driver _pwn2) setCombatMode "BLUE";
*/