//script for race
private ["_wpNum","_start","_time","_wpArray","_wpActive","_wpCoord","_counter"];

_wpNum = 0;


hint "Start!";
//get starting time
_start = diag_tickTime;

//create first trigger

_wpArray = [] call TFRT_fnc_raceCoords;
for [{_counter = 0},{_counter < count _wpArray},{_counter = _counter + 1}] do {
	_wpActive = [_counter] call TFRT_fnc_raceTrigger;
	waitUntil {isNull _wpActive};
};

//[_wpNum] spawn TFRT_fnc_raceTrigger;

//wait for player to leave the area
sleep 60;


//wait until player reaches the finish line again
waitUntil {player distance [3668,13153,0] < 20};

//get needed time
_time = diag_ticktime - _start;
hint format ["Du hast %1 für die Strecke gebraucht!",_time];