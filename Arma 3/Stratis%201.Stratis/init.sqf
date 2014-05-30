if (isServer) then {call compile preprocessFile "scripts\locationlist.sqf";};

//precompile flightpath at mission start
path = compile preprocessFile "scripts\path.sqf";
path2 = compile preprocessFile "scripts\path2.sqf";

//start mission flight to start location
rec = [] spawn path;
rec2 = [] spawn path2;

