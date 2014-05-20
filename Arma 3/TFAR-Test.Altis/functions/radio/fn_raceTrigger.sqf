//script for waypoint coordinates

private ["_triggerInfo","_triggerX","_triggerY"."_triggerDir","_wpNumber""_trigger"];


_wpNumber = [_this,1, 0,[0]] call BIS_fnc_param;

//get new trigger coordinates
_triggerInfo = [_wpNumber] call TFTR_fnc_raceCoords;
_triggerX = _triggerCoord select 0;
_triggerY = _triggerCoord select 1;
_triggerDir = _triggerCoord select 2;

//create trigger and create direction arrow
_trigger = createTrigger ["emptydetector", [(_triggerX),(_triggerY),0]];
_trigger setTriggerArea [6, 8, 0, yes];
_trigger setTriggerActivation ["EAST", "PRESENT", true];
_trigger setTriggerTimeout [0, 0, 0, true];
_trigger setTriggerStatements ["this", "_wpNumber = _wpNumber + 1", "[_triggerX,_triggerY,_triggerDir] spawn TFRT_fnc_hideArrows"];
sleep 60;
deleteVehicle _trigger; 
