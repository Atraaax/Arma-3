//spawn group on given position

private ["_mod","_wp","_spawn","_groupspawn","_wpspawn","_waypoint","_wpPos","_group","_trig","_behaviorHandle","_rdmdir"];

//get position modification
_mod = [_this, 3, 0, [0]] call BIS_fnc_param;

_group = createGroup west;

//extend spawn range given by action
hint "Dummy Einheiten werden aufs Feld gesandt in:";
sleep 3;
hint "3";
sleep 1;
hint "2";
sleep 1;
hint "1";
sleep 1;
hint "Feuer frei";

//generate random number for change of direction
_rdmdir = round (random 1);

//array for spawn and waypoint coordinates
_spawn = [[21355,15225,0],[21400,15210,0],[21454,15181,0],[21495,15140,0],[21533,15107,0],[21608,15051,0]];
_waypoint = [[21182,15063,0],[21209,15041,0],[21238,14997,0],[21240,14958,0],[212148,14885,0],[21350,14832,0]];

_groupspawn = [];
_wpspawn = [];

switch (_mod) do {
	case 100: {_groupspawn = _spawn select 0; _wpspawn = _waypoint select 0;};
	case 150: {_groupspawn = _spawn select 1; _wpspawn = _waypoint select 1;};
	case 200: {_groupspawn = _spawn select 2; _wpspawn = _waypoint select 2;};
	case 250: {_groupspawn = _spawn select 3; _wpspawn = _waypoint select 3;};
	case 300: {_groupspawn = _spawn select 4; _wpspawn = _waypoint select 4;};
	case 400: {_groupspawn = _spawn select 5; _wpspawn = _waypoint select 5;};
};

//spawn group in given location depending on distance choice
//[_group, [(if (_rdmdir > 0) then {21150} else {21350}),15134 - _mod,0]] spawn TFRT_fnc_createGroup;
[_group, [(if (_rdmdir > 0) then {(_groupspawn select 0)} else {(_wpspawn select 0)}),(if (_rdmdir > 0) then {(_groupspawn select 1)} else {(_wpspawn select 1)}),0]] spawn TFRT_fnc_createGroup;

sleep 2;

//create waypoint for group
//_wpPos = [(if (_rdmdir > 0) then {21350} else {21150}), 15134 - _mod, 0];
//_wp = _group addwaypoint [_wpPos,5];
_wpPos = [(if (_rdmdir > 0) then {(_wpspawn select 0)} else {(_groupspawn select 0)}),(if (_rdmdir > 0) then {(_wpspawn select 1)} else {(_groupspawn select 1)}),0];
_wp = _group addwaypoint [_wpPos,5];

//change behaviour until WP reached (activated for testing purpose)
//_behaviorHandle = [_group] spawn TFRT_fnc_changeBehaviour;

//kill group when WP is reached
waitUntil {
	_return = false;
	{
		if (([(position _x) select 0, (position _x) select 1, 0] distance [_wpPos select 0, _wpPos select 1, 0]) < 10) exitWith {_return = true};
	} forEach (units _group);
	_group setCurrentWaypoint _wp;	
	_group setBehaviour {"COMBAT"};
	_return;
};

//terminate _behaviorHandle;

//kill group
{
	deleteVehicle _x;
} forEach (units _group);
deleteGroup _group;