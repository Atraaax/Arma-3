//change random behaviour to waypoint
private ["_group","_condition"];

_group = [_this, 0, grpNull, [grpNull]] call BIS_fnc_param;

//condition until waypoint is reached
while { true} do {
	_condition = round random 1;
	_group setBehaviour (switch (_condition) do {
		case 0: {"COMBAT"};
		case 1: {"CARELESS"};
	});
	sleep 3;
};