_trig = createTrigger ["emptydetector", [21261,15242,0]];
_trig setTriggerArea [100, 100, 0, false];
_trig setTriggerActivation ["east", "not present", true];
_trig setTriggerTimeout [2, 3, 4, false]
_trig setTriggerStatements ["this", "hint "Waffen in diesem Bereich erlaubt"", "TFRT_fnc_remove_weapon"];