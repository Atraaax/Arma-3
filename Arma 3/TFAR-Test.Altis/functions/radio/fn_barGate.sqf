//animate bar gates

private ["_gate1","_gate2","_gate1Status","_gate2Status","_whichTrigger"];

//get gate name
_gate1 = [_this,0, objNull,[objNull]] call BIS_fnc_param;
_gate2 = [_this,1, objNull,[objNull]] call BIS_fnc_param;
_whichTrigger = [_this,2, 1,[0]] call BIS_fnc_param;

//get status of gate
_gate1Status = _gate1 animationPhase "Door_1_rot";
_gate2Status = _gate2 animationPhase "Door_1_rot";

//change gate status from open to locked or the other way
if (_gate1Status==1) then {_gate1 animate ["Door_1_rot",0];} else {_gate1 animate ["Door_1_rot",1];};
if (_gate2Status==1) then {_gate2 animate ["Door_1_rot",0];} else {_gate2 animate ["Door_1_rot",1];};

//reset status of gate 1 and 2 after seconds
sleep 5;
if (_whichTrigger == 1) then {
	_gate1 animate ["Door_1_rot",1];
	_gate2 animate ["Door_1_rot",0];
};
	