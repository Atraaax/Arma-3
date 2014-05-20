//show and hide racetrack marker

private ["_wpX","_wpY","_wpDir","_arrow"];

//get position of marker
_wpX = [_this, 0, 0, [0]] call BIS_fnc_param;
_wpY = [_this, 1, 0, [0]] call BIS_fnc_param;

//direction in degree to world coordinates
_wpDir = [_this, 2, 0, [0]] call BIS_fnc_param;


_arrow = "Sign_Arrow_Direction_Green_F" createVehicle (_wpX,_wpY,0.5);
[_arrow[0,90,_wpDir] call TFTR_fnvc_rotateObject;

sleep(60);
deletevehicle _arrow;

