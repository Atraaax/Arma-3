//spawn vehicle on given position
private ["_car","_spawn","_vehicle","_vehicleType"];

//get vehicle type
_car = [_this,3, "offroad",[""]] call BIS_fnc_param;

_spawn = [3637,13111,0];

hint "Kommt sofort...";
sleep 1;
//Case of different vehicles
switch (_car) do {
	case "offroad": {_vehicleType = "b_g_offroad_01_f"};
	case "ifrit": {_vehicleType = "o_mrap_02_f"};
	case "strider": {_vehicleType = "I_MRAP_03_f"};
};

//Spawn vehicle
_vehicle = _vehicleType createVehicle(_spawn);
_vehicle allowDamage false;
//	case "offroad": {_vehicle = "b_g_offroad_01_f" createVehicle(_spawn)};
//case "ifrit": {_vehicle = "o_mrap_02_f" createVehicle(_spawn);clearWeaponCargoGlobal _car;};
//case "strider": {_vehicle = "I_MRAP_03_f" createVehicle(_spawn)};
clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle; 
clearItemCargoGlobal _vehicle;
