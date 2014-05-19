//script for waypoint coordinates

private ["_track1""_wp","_wpCoord"];

//assign waypoint coordinates including arrow direction
_track1=[[3654,13263,"l"],[3485,13362,"r"],[3619,13727,"r"],[3771,13646,"l"],[4077,13891,"r"],[4229,13899,"l"],[52144,14489,"l"],[6170,15680,"r"],[6780,15507,"l"],[9134,15789,"r"],[6780,15437,"r"],[6783,15511,"l"],[6170,15676,"l"],[5243,14486,"r"],[5178,14482,"l"],[5012,13686,"r"]];

//get waypoint number
_wp = [_this, 0, 0, [0]] call BIS_fnc_param;

//assign coordinated to return variable
_wpCoord = _track1 select (_wp);

//return new WP coordinates
_wpCoord

