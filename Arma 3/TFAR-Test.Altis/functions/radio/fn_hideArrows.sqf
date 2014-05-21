//show and hide racetrack marker

private ["_wpX","_wpY","_wpDir","_arrow"];

//get position of marker
_wpX = [_this, 0, 0, [0]] call BIS_fnc_param;
_wpY = [_this, 1, 0, [0]] call BIS_fnc_param;

//direction in degree to world coordinates
_wpDir = [_this, 2, 0, [0]] call BIS_fnc_param;

_arrow = "Sign_Arrow_Direction_Green_F" createVehicle [3654,13263,0];
_arrow setPos [getPos _arrow select 0, getPos _arrow select 1,1];
_arrow setDir _wpDir;
[_arrow, 0, 90] call BIS_fnc_setPitchBank;

sleep(60);
deletevehicle _arrow;

