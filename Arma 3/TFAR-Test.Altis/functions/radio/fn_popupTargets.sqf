//Popup target behaviour
private ["_target","_timer"];

//get target name
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

_target animate ["terc",1];

//randomize time for popup
_timer = (floor (random 4)) +3;
sleep _timer;
//pop target up
_target animate ["terc",0];