//remove weapons and ammo from player

private ["_player"];

//get playername
_player = [_this, 1, objNull, [objNull]] call BIS_fnc_param;

hint "Waffen außerhalb des Schiessstands nicht erlaubt.\nWaffen werden entfernt!"
removeallweapons _player;