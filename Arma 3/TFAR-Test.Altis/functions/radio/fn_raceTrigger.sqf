//script for waypoint coordinates

private ["_triggerInfo","_triggerX","_triggerY","_triggerDir","_wpNumber","_trigger"];


_wpNumber = [_this,0, 0,[0]] call BIS_fnc_param;
//get new trigger coordinates
_triggerInfo = [_wpNumber] call TFRT_fnc_raceCoords;
_triggerX = _triggerInfo select 0;
_triggerY = _triggerInfo select 1;
_triggerDir = _triggerInfo select 2;

//create trigger and create direction arrow
_trigger = createTrigger ["emptydetector", [(_triggerX),(_triggerY),0]];
_trigger setTriggerArea [10, 10, 0, yes];
_trigger setTriggerActivation ["EAST", "PRESENT", true];
_trigger setTriggerTimeout [0, 0, 0, true];
_trigger setTriggerStatements ["this", "[_wpNumber] spawn TFRT_fnc_raceTrigger", "[_triggerX,_triggerY,_triggerDir] spawn TFRT_fnc_hideArrows"];
sleep 60;
deleteVehicle _trigger; 
