//teleport Script
//getting position by action
private ["_caller","_tele","_dest","_text"];

_caller = _this select 1;
_dest = _this select 3 select 0;
_text = _this select 3 select 1;


hint format ["%1",_text];
sleep 4;
hint "los gehts in...";
sleep 1;
hint "2";
sleep 1;
hint "1";
sleep 1;
hint "Bubba hat guten Weg gefunden.";
_caller setPos (getPos (_dest));


