//script for race
private ["_wpNumber","_start","_time","_arrowInfo","_aY","_aX","_aDir"];

_wpNumber = 0;

hint "3...";
sleep 1;
hint "2...";
sleep 1;
hint "1...";
sleep 1;
hint "Start!";
//get starting time
_start = diag_tickTime;

_arrowInfo = [_wpNumber] call TFRT_fnc_raceCoords;
_aX= _arrowInfo select 0;
_aY= _arrowInfo select 1;
_aDir= _arrowInfo select 2;

[_aX,_aY,_aDir] spawn TFRT_fnc_hideArrows;


//create first trigger
[_wpNumber] call TFRT_fnc_raceTrigger;

//wait for player to leave the area
sleep (60);


//wait until player reaches the finish line again
waitUntil {player distance [3668,13153,0] < 20};

//get needed time
_time = diag_ticktime - _start;
hint format ["Du hast %1 für die Strecke gebraucht!",_time];