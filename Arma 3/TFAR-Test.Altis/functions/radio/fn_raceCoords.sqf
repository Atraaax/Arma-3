//script for waypoint coordinates

private ["_track1""_wp","_wpCoord"];

//assign waypoint coordinates including arrow direction and abort number
_track1=[[3654,13263,290],[3485,13362,30],[3619,13727,100],[3771,13646,45],[4077,13891,90],[4229,13899,70],[52144,14489,5],[6170,15680,135],[6780,15507,0],[9134,15789,170],[6780,15437,0],[6783,15511,275],[6170,15676,235],[5243,14486,265],[5178,14482,180],[5012,13686,260]];

//get waypoint number
_wp = [_this, 0, 0, [0]] call BIS_fnc_param;

//assign coordinated to return variable
_wpCoord = _track1 select (_wp);

//return new WP coordinates
_wpCoord