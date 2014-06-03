tf_no_auto_long_range_radio = true;
TF_give_personal_radio_to_regular_soldier = 0;
if (isServer) then {call compile preprocessFile "scripts\locationlist.sqf";};
_side = createCenter east;
//precompile flightpath at mission start
path = compile preprocessFile "scripts\path.sqf";
path2 = compile preprocessFile "scripts\path2.sqf";

//start mission flight to start location
rec = [] spawn path;
rec2 = [] spawn path2;

"pat1" setMarkerPos [-(getMarkerPos "pat1" select 0),-(getMarkerPos "pat1" select 1)];
"pat2" setMarkerPos [-(getMarkerPos "pat2" select 0),-(getMarkerPos "pat2" select 1)];
"pat3" setMarkerPos [-(getMarkerPos "pat3" select 0),-(getMarkerPos "pat3" select 1)];
