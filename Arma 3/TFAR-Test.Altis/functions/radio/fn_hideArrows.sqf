//show and hide racetrack marker

private ["_number","_actDeact","_marker1","_marker2","_marker3"];

//get number of marker
_number = [_this, 0, 0, [0]] call BIS_fnc_param;
_actDeact = [_this, 1, 0, [0]] call BIS_fnc_param;

//build waypoint name
_marker1name = format ["m%1a",_number];
_marker2name = format ["m%1b",_number];
_marker3name = format ["m%1c",_number];

_marker1 = missionNamespace getVariable _marker1name;
_marker2 = missionNamespace getVariable _marker2name;
_marker3 = missionNamespace getVariable _marker3name;

if (_number == 1 && _actDeact == 1) then {
	hint "3...";
	sleep 1;
	hint "2...";
	sleep 1;
	hint "1...";
	sleep 1;
	hint "Start!";
};
if (_actDeact == 1) then {
	_marker1 hideObject false;
	_marker2 hideObject false;
	_marker3 hideObject false;
} 
else {
	sleep 10;
	_marker1 hideObject true;
	_marker2 hideObject true;
	_marker3 hideObject true;
};

/*
[] spawn {

START_TIME = diag_tickTime;
while {true} do
{
    ELAPSED_TIME = diag_tickTime - START_TIME;
    sleep 1;
}; 

	};
oder mit waitUntil
*/