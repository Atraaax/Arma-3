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
[_group,_position,"CARELESS","NORMAL","MOVE",1] spawn ATR_fnc_createWaypoint;
//informant conversation
/*sleep 5;
costia globalChat "Costia Papadopolous: Hey you! Over here!";
sleep 4;
costia globalChat "Costia Papadopolous: But quiet! I think we not alone.";
sleep 4;
costia globalChat "Costia Papadopolous: You me promised safe get away!!";
sleep 2;
[_group, [4280,2670,0],"CARELESS","FULL","MOVE",2] spawn ATR_fnc_createWaypoint;
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
[_group, [4275,2674,0],"CARELESS","FULL","MOVE",3] spawn ATR_fnc_createWaypoint;
sleep 2;
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

[_group, [4280,2670,0],"CARELESS","FULL",4] spawn ATR_fnc_createWaypoint;
["airstation",_air,"ELLIPSE",100,100,"mil_circle","ColorRed","DiagGrid",""] call ATR_fnc_createMarker;
sleep 10;*/

//create trigger for airsupport
hint "Airsupport available. Call evacuation via radio.";
_trig = ["evac",150,150,0,false,"BRAVO","PRESENT",false] call ATR_fnc_createTrigger; //"_marker","_xRad","_yRad","_angle","_rect","_side","_detect","_repeat"
_trig setTriggerStatements ["this","radioBravo=true",""];

//wair for airsupport
waitUntil {radioBravo};

//spawn vehicles and assign in handles
_vehicles = [] call ATR_fnc_airFightVcl;
_airhum = _vehicles select 0;
_airpwn1 = _vehicles select 1;
_airpwn2 = _vehicles select 2;
_aircay = _vehicles select 3;

//assign vehicle handles
hum = _airhum select 0;
_pwn1 = _airpwn1 select 0;
_pwn2 = _airpwn2 select 0;
_cay = _aircay select 0;

_pwn1 flyinHeight 50;
_pwn2 flyinHeight 50;

//combatModemode
(driver hum) setCombatMode "BLUE";
(driver _pwn1) setCombatMode "BLUE";
(driver _pwn2) setCombatMode "BLUE";
(driver _cay) setCombatMode "BLUE";

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

waitUntil {sleep 1; _distance = (hum distance (getMarkerPos "humArr"));_distance < 800}; 
costia globalchat "Costia Papadopolous: They Coming!!!! Hide!! HIDE!!!!!!";
_smoke = "SmokeShellGreen" createVehicle [4280,2677,1];
[_group, [4291,2697,0],"CARELESS","FULL","MOVE",5] spawn ATR_fnc_createWaypoint;

waitUntil {sleep 1, _distance = (hum distance informant1); _distance < 24}; 
costia globalchat "Costia Papadopolous: Help! Get out me! Help!";
[_group, [(position hum select 0)+2,(position hum select 1)-2,0],"CARELESS","FULL","GETIN",6] spawn ATR_fnc_createWaypoint;

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
_wpH4 setWaypointStatements ["true",""];







/*
waitUntil {sleep 1;informant1 in hum};
_group = group informant1;
[_group, getMarkerPos "humEvac","CARELESS","FULL","MOVE",4] spawn ATR_fnc_createWaypoint;
_group setCurrentWaypoint [_group,4];*/