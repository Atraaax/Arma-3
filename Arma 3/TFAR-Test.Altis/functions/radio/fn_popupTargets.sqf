//Popup target behaviour
private ["_target"];

//get target name
_target = [_this, 0, onjNull, [obJNull]] call BIS_fnc_param;
diag_log _target; 

//randomize time for popup
_x = floor (random 3) +3;
diag_log _x; 
sleep _x;
_target animate ["terc",0];
