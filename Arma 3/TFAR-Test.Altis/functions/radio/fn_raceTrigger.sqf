//script for waypoint coordinates

private ["_triggerInfo","_triggerX","_triggerY","_triggerDir","_wpNumber","_wpArray","_trigger","_checker"];


_wpNumber = [_this,0, 0,[0]] call BIS_fnc_param;
_wpArray = [] call TFRT_fnc_raceCoords;


//get new trigger coordinates
_triggerX = (_wpArray select _wpNumber) select 0;
_triggerY = (_wpArray select _wpNumber) select 1;
_triggerDir = (_wpArray select _wpNumber) select 2;

//hint format ["%1, %2, %3"_triggerX, _triggerY,_triggerDir];

//create trigger and create direction arrow
[_triggerX,_triggerY,_triggerDir] spawn TFRT_fnc_hideArrows;

_trigger = createTrigger ["emptydetector", [(_triggerX),(_triggerY),0]];
_trigger setTriggerArea [7, 7, 0, true];
_trigger setTriggerActivation ["EAST", "PRESENT", false];
_trigger setTriggerTimeout [0, 0, 0, false];

_trigger setTriggerStatements ["this", "deleteVehicle thisTrigger", ""];
_trigger



