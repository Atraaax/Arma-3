//spawn group on given position

private ["_mod","_wp","_group","_trig","_behaviorHandle"];

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

//spawn group in given location depending on distance choice
[_group, [21150,15134 - _mod,0]] spawn TFRT_fnc_createGroup;

sleep 2;

//create waypoint for group
_wpPos = [21150 + 200, 15134 - _mod, 0];
_wp = _group addwaypoint [_wpPos,5];


//change behaviour until WP reached (deactivated for testing purpose)
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