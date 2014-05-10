//vehicle unlock for Col.

private ["_name","_vehicle","_rank","_unlock"];

//get playername
_name = [_this, 1, player, [objNull]] call BIS_fnc_param;
//get vehiclename
_vehicle = [_this, 0, objNull, [""]] call BIS_fnc_param;
//get player rank
_rank = RANK _name;

//If user is ranked COL then unlock the vehicle
if (_rank == "COLONEL") then {_vehicle lock false} else {hint 'Frag Deinen Ausbilder nach dem Schluessel'};
