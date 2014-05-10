//remove weapons and ammo from player

private ["_player"];

hint "remove weapon";
//get playername
_player = [_this, 1, player, [objNull]] call BIS_fnc_param;

hint 'Waffen außerhalb des Schiessstands nicht erlaubt.\nWaffen werden entfernt!'
removeallweapons _player;