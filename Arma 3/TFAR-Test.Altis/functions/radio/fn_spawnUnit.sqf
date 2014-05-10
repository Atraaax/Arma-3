//spawn group on given position

private ["_mod","_wp","_group","_trig","_behaviorHandle"];

//get position modification
_mod = [_this, 3, 0, [0]] call BIS_fnc_param;

_group = createGroup west;

//extend spawn range given by action
[_group, [21200,15134 - _mod,0]] spawn TFRT_fnc_createGroup;

sleep 2;

//create waypoint for group
_wpPos = [21200 + 200, 15134 - _mod, 0];
_event_marker = createMarker ["loot_event_marker", _wpPos];
	_event_marker setMarkerType "Mil_dot";
	_event_marker setMarkerBrush "Solid";
	_event_marker setMarkerText "Penis";
_wp = _group addwaypoint [_wpPos,5];


//change behaviour until WP reached
_behaviorHandle = [_group] spawn TFRT_fnc_changeBehaviour;

//kill group when WP is reached
waitUntil {
	_return = false;
	{
		if (([(position _x) select 0, (position _x) select 1, 0] distance [_wpPos select 0, _wpPos select 1, 0]) < 100) exitWith {_return = true};
	} forEach (units _group);	
	_group setCurrentWaypoint _wp;	
	_return;
};

diag_log "FU";

terminate _behaviorHandle;

//kill group
{
	deleteVehicle _x;
} forEach (units _group);
deleteGroup _group;