//script for race
private ["_wpNumber","_start"_time];

_wpNumber = 1;

hint "3...";
sleep 1;
hint "2...";
sleep 1;
hint "1...";
sleep 1;
hint "Start!";

//get starting time
_start = diag_tickTime;

//wait for player to leave the area
sleep (60);

//create first trigger
[_wpNumber] call TFTR_fnc_raceTrigger;

//wait until player reaches the finish line again
waitUntil {player distance [3668,13153,0] < 20};

//get needed time
_time = diag_ticktime - _start;
hint format ["Du hast %1 für die Strecke gebraucht!",_time];