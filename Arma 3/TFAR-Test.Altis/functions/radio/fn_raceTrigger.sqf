//script for waypoint coordinates

private ["_triggerCoord","_wpNumber""_trigger"];


_triggerCoord = [_wpNumber] call TFTR_fnc_raceCoords;


/*
_trig = createTrigger ["emptydetector", [21261,15242,0]];
_trig setTriggerArea [80, 80, 0, false];
_trig setTriggerActivation ["EAST", "PRESENT", true];
_trig setTriggerTimeout [0, 0, 0, true];
_trig setTriggerStatements ["this", "", "[] spawn TFRT_fnc_remove_weapon"];
/*