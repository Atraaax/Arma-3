_trig = createTrigger ["emptydetector", [21255,15242,0]];
_trig setTriggerArea [50, 50, 0, false];
_trig setTriggerActivation ["ANY", "not present", true];
_trig setTriggerTimeout [2, 3, 4, false]
_trig setTriggerStatements ["this", "hint 'Waffen in diesem Bereich erlaubt'", []spawn TFRT_fnc_remove_weapon];