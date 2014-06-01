private ["_wp","_player","_position","_group","_pause","_air","_trigger","_wpArray","_wpHum","_wpPwn","_vehicles","_airhum","_airpwn1","_airpwn2","_aircay","_pwn1","_pwn2","_cay"];
_vehicleArray = [];
_air = markerPos "obj3";
diag_log _air;
//set waypoint for informant at player position
_player = [_this,0, objNull,[objNull]] call BIS_fnc_param;
_position = position _player;
_group = createGroup Civilian;
[informant1] joinsilent _group;
informant1 setCombatMode "BLUE";
informant1 allowFleeing 0;

_wpGr1 = _group addWaypoint [_position,0,1];
_wpGr1 setWaypointBehaviour "CARELESS";
_wpGr1 setWaypointSpeed "NORMAL";
_wpGr1 setWaypointType "MOVE";
_wpGr1 setWaypointCompletionRadius 1;
_wpGr1 setWaypointStatements ["true",""];
//informant conversation
/*sleep 5;
costia globalChat "Costia Papadopolous: Hey you! Over here!";
sleep 4;
costia globalChat "Costia Papadopolous: But quiet! I think we not alone.";
sleep 4;
costia globalChat "Costia Papadopolous: You me promised safe get away!!";
sleep 2;
_wpGr2 = _group addWaypoint [[4280,2670,0],0,2];
_wpGr2 setWaypointBehaviour "CARELESS";
_wpGr2 setWaypointSpeed "NORMAL";
_wpGr2 setWaypointType "MOVE";
_wpGr2 setWaypointCompletionRadius 1;
_wpGr2 setWaypointStatements ["true",""];
sleep 3;
costia globalChat "Costia Papadopolous: Where boat? Where helicopter? We all die!! Where boat????";
sleep 2;
informant1 addaction ["Stay calm man! We're here to protect you!",{costiaWait = 1;informant1 removeAction 0;},[],1,true,true,"","_this == player && player distance informant1 <= 4"];
waituntil {sleep 0.1;costiaWait==1};
sleep 3;
costia globalChat "Costia Papadopolous: Help? What help? You little people here!";
sleep 4;
costia globalChat "Costia Papadopolous: Soldier on Stratis much!! Much more than you!";
sleep 4;
costia globalChat "Costia Papadopolous: Where boat!";
_wpGr3 = _group addWaypoint [[4275,2674,0],0,3];
_wpGr3 setWaypointBehaviour "CARELESS";
_wpGr3 setWaypointSpeed "FULL";
_wpGr3 setWaypointType "MOVE";
_wpGr3 setWaypointCompletionRadius 1;
_wpGr3 setWaypointStatements ["true",""];
costia globalChat "Costia Papadopolous: Me go!! You no stay!";
informant1 addaction ["Stay here! We'll call our support immediatly.",{costiaWait = 2;informant1 removeAction 1;},[],1,true,true,"","_this == player && player distance informant1 <= 4"];
waituntil {sleep 0.1;costiaWait==2};
sleep 4;
costia globalChat "Costia Papadopolous: Support? Now? Please... call... I help!";
sleep 4;
costia globalChat "Costia Papadopolous: Ok. Much soldiers at Maxwell! Much than you. You not go.";
sleep 4;
costia globalChat "Costia Papadopolous: But big weapons at air station! Make soldiers dead! You go there!";
sleep 4;
costia globalChat "Costia Papadopolous: I mark you map. Now boat. Me fear!";

sleep 3;

_wpGr4 = _group addWaypoint [[4280,2670,0],0,4];
_wpGr4 setWaypointBehaviour "CARELESS";
_wpGr4 setWaypointSpeed "FULL";
_wpGr4 setWaypointType "MOVE";
_wpGr4 setWaypointCompletionRadius 1;
_wpGr4 setWaypointStatements ["true",""];

["airstation",_air,"ELLIPSE",100,100,"mil_circle","ColorRed","DiagGrid",""] call ATR_fnc_createMarker;
sleep 10;*/
/*
	File: spawnGroup.sqf
	Author: Joris-Jan van 't Land, modified by Thomas Ryan

	Description:
	Function which handles the spawning of a dynamic group of characters.
	The composition of the group can be passed to the function.
	Alternatively a number can be passed and the function will spawn that
	amount of characters with a random type.

	Parameter(s):
	_this select 0: the group's starting position (Array)
	_this select 1: the group's side (Side)
	_this select 2: can be three different types:
		- list of character types (Array)
		- amount of characters (Number)
		- CfgGroups entry (Config)
	_this select 3: (optional) list of relative positions (Array)
	_this select 4: (optional) list of ranks (Array)
	_this select 5: (optional) skill range (Array)
	_this select 6: (optional) ammunition count range (Array)
	_this select 7: (optional) randomization controls (Array)
		0: amount of mandatory units (Number)
		1: spawn chance for the remaining units (Number)
	_this select 8: (optional) azimuth (Number)

	Returns:
	The group (Group)
*/


//create trigger for airsupport
hint "Airsupport available. Call evacuation via radio.";
_trig = ["evac",150,150,0,false,"BRAVO","PRESENT",false] call ATR_fnc_createTrigger; //"_marker","_xRad","_yRad","_angle","_rect","_side","_detect","_repeat"
_trig setTriggerStatements ["this","radioBravo=true",""];


//wait for airsupport
waitUntil {radioBravo};
_enemy1 = [(getMarkerPos "enemy1"),EAST,(configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad_Weapons")] call bis_fnc_spawnGroup;

_enemy1 setCombatMode "RED";
_wpene1 = _enemy1 addWaypoint [getMarkerPos "obj2",0];
_wpene1 setWaypointBehaviour "AWARE";
_wpene1 setWaypointSpeed "SAD";
_wpene1 setWaypointType "MOVE";
_wpene1 setWaypointCompletionRadius 5;
_wpene1 setWaypointStatements ["true",""];


/*_wpene2 = _enemy1 addWaypoint [getMarkerPos "obj2",0];
_wpene2 setWaypointBehaviour "AWARE";
_wpene2 setWaypointSpeed "NORMAL";
_wpene2 setWaypointType "SAD";
_wpene2 setWaypointCompletionRadius 5;
_wpene2 setWaypointStatements ["true",""];*/

_enemy1 = [[4140,2853,0],EAST,8] call BIS_fnc_spawnGroup;
_enemy1 setCombatMode "RED";
_wpene1 = _enemy1 addWaypoint [[4277,2681,0],0];
_wpene1 setWaypointBehaviour "AWARE";
_wpene1 setWaypointSpeed "NORMAL";
_wpene1 setWaypointType "MOVE";
_wpene1 setWaypointCompletionRadius 5;
_wpene1 setWaypointStatements ["true",""];


_wpene2 = _enemy1 addWaypoint [[4277,2681,0],0];
_wpene2 setWaypointBehaviour "AWARE";
_wpene2 setWaypointSpeed "NORMAL";
_wpene2 setWaypointType "SAD";
_wpene2 setWaypointCompletionRadius 5;
_wpene2 setWaypointStatements ["true",""];
diag_log (waypoints _enemy1);

//spawn vehicles and assign in handles
_vehicles = [] call ATR_fnc_airFightVcl;
_airhum = _vehicles select 0;
_airpwn1 = _vehicles select 1;
_airpwn2 = _vehicles select 2;
_aircay = _vehicles select 3;

//create groups
_airblue = createGroup West;
_airbluefight = createGroup West;
_airredfight = createGroup EAST;


//assign groups
[(_airhum select 2)] joinSilent _airblue;
[(_airpwn1 select 2)] joinSilent _airbluefight;
[(_airpwn2 select 2)] joinSilent _airbluefight;
[(_aircay select 2)] joinSilent _airredfight;

//assign vehicle handles
hum = _airhum select 0;
_pwn1 = _airpwn1 select 0;
_pwn2 = _airpwn2 select 0;
_cay = _aircay select 0;

_pwn1 flyinHeight 50;
_pwn2 flyinHeight 50;

//combatModemode
_airblue setCombatMode "BLUE";
(driver _pwn1) setCombatMode "RED";
(driver _pwn2) setCombatMode "RED";
(driver _cay) setCombatMode "RED";

//waypoints for Hummingbird (extract)
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
_wpH3 setWaypointType "MOVE";
_wpH3 setWaypointCompletionRadius 10;
_wpH3 setWaypointStatements ["true","(vehicle this) land ""Get In"""];

_wpP1 = (_airbluefight) addWaypoint [getMarkerPos "pwn",0,1];
_wpP1 setWaypointBehaviour "CARELESS";
_wpP1 setWaypointSpeed "FULL";
_wpP1 setWaypointType "MOVE";
_wpP1 setWaypointCompletionRadius 20;
_wpP1 setWaypointStatements ["true",""];
   
_wpP2 = (_airbluefight) addWaypoint [getMarkerPos "pwn2",0,2];
_wpP2 setWaypointBehaviour "AWARE";
_wpP2 setWaypointSpeed "FULL";
_wpP2 setWaypointType "SAD";
_wpP2 setWaypointCompletionRadius 20;
_wpP2 setWaypointStatements ["true",""];
   
_wpP3 = (_airbluefight) addWaypoint [getMarkerPos "pwnArr",0,3];
_wpP3 setWaypointBehaviour "COMBAT";
_wpP3 setWaypointSpeed "NORMAL";
_wpP3 setWaypointType "SAD";
_wpP3 setWaypointCompletionRadius 20;
_wpP3 setWaypointStatements ["true",""];

_wpO1 = (_airredfight) addWaypoint [getMarkerPos "orc",0,1];
_wpO1 setWaypointBehaviour "AWARE";
_wpO1 setWaypointSpeed "NORMAL";
_wpO1 setWaypointType "SAD";
_wpO1 setWaypointCompletionRadius 20;
_wpO1 setWaypointStatements ["true",""];
   
_wpO2 = (_airredfight) addWaypoint [getMarkerPos "orcArr",0,2];
_wpO2 setWaypointBehaviour "AWARE";
_wpO2 setWaypointSpeed "NORMAL";
_wpO2 setWaypointType "SAD";
_wpO2 setWaypointCompletionRadius 20;
_wpO2 setWaypointStatements ["true",""];

waitUntil {sleep 1; _distance = (hum distance (getMarkerPos "humArr"));_distance < 800}; 
costia globalchat "Costia Papadopolous: They Coming!!!! Hide!! HIDE!!!!!!";
_smoke = "SmokeShellGreen" createVehicle [4280,2677,1];
[_group, [4291,2697,0],"CARELESS","FULL","MOVE",5] spawn ATR_fnc_createWaypoint;
/*(_airbluefight) setCombatMode "RED";
(_airbluefight) setCombatMode "RED";
(_airredfight) setCombatMode "RED";*/

(driver _pwn1) doTarget _cay;
(driver _pwn2) doTarget _cay;
(driver _cay) doTarget _pwn2;
(driver _pwn1) doFire _cay;
(driver _pwn2) doFire _cay;
(driver _cay) doFire _pwn2;

_cay setDamage 0.6;
//waitUntil {sleep 0.5;if !alive _pwn2 then {(driver _cay) doTarget _pwn1;(driver _cay) doFire _pwn1;} else {(driver _cay) doTarget _pwn2;(driver _cay) doFire _pwn2;};(driver _pwn1) doTarget _cay;(driver _pwn2) doTarget _cay;(driver _pwn1) doFire _cay;(driver _pwn2) doFire _cay;!alive _cay};
//(driver _pwn1) setCombatMode "BLUE";
//(driver _pwn2) setCombatMode "BLUE";

waitUntil {sleep 1, _distance = (hum distance informant1); _distance < 24}; 
costia globalchat "Costia Papadopolous: Help! Get out me! Help!";

_wpGr5 = _group addWaypoint [[(position hum select 0)+2,(position hum select 1)-2],0,5];
_wpGr5 setWaypointBehaviour "CARELESS";
_wpGr5 setWaypointSpeed "FULL";
_wpGr5 setWaypointType "MOVE";
_wpGr5 setWaypointCompletionRadius 1;
_wpGr5 setWaypointStatements ["true",""];
waitUntil {sleep 0.1, _distance = (Informant1 distance hum); _distance < 7}; 
//[Informant1] joinSilent (group hum);
Informant1 assignAsCargo hum;
[Informant1] orderGetIn true;

waitUntil {sleep 1;hint format ["bla:%1",(Currentwaypoint (group Hum))]; Informant1 in Hum};

_wpH4 = (group Hum) addWaypoint [getMarkerPos "humEvac",0,4];
_wpH4 setWaypointBehaviour "CARELESS";
_wpH4 setWaypointSpeed "FULL";
_wpH4 setWaypointType "MOVE";
_wpH4 setWaypointCompletionRadius 5;
_wpH4 setWaypointStatements ["true","{deleteVehicle _x} forEach (crew hum); deleteVehicle hum"];







/*
waitUntil {sleep 1;informant1 in hum};
_group = group informant1;
[_group, getMarkerPos "humEvac","CARELESS","FULL","MOVE",4] spawn ATR_fnc_createWaypoint;
_group setCurrentWaypoint [_group,4];*/