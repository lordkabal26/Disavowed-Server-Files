if (isServer) then {
	diag_log "Loading custom server compiles";
};

if (!isDedicated) then {
	diag_log "Loading custom client compiles";

	fnc_usec_selfactions = compile preprocessFileLineNumbers "dayz_code\compile\fn_selfActions.sqf";
	player_selectSlot = compile preprocessFileLineNumbers "dayz_code\compile\ui_selectSlot.sqf";
	remoteVehicle = compile preprocessFileLineNumbers "scripts\remoteVehicle\remoteVehicle.sqf";
	player_spawnCheck = compile preprocessFileLineNumbers "dayz_code\compile\player_spawnCheck.sqf"; //remove loot from safezones
	call compile preprocessFileLineNumbers "mbc\config.sqf";
};
