private ["_wp","_player","_position","_group","_pause","_air","_trigger","_wpArray","_wpHum","_wpPwn"];
_air = markerPos "obj3";
diag_log _air;
//set waypoint for informant at player position
_player = [_this,0, objNull,[objNull]] call BIS_fnc_param;
_position = position _player;
_group = createGroup Civilian;
[informant1] joinsilent _group;
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
hint "Airsupport available. Call evacuation via radio.";
_trig = ["evac",150,150,0,false,"BRAVO","PRESENT",false] call ATR_fnc_createTrigger; //"_marker","_xRad","_yRad","_angle","_rect","_side","_detect","_repeat"

_trig setTriggerStatements ["this","[] call ATR_fnc_airFightVcl",""];

