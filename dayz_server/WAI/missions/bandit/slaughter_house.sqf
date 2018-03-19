if(isServer) then {

	private 		["_complete","_crate_type","_mission","_position","_crate","_baserunover","_baserunover1","_baserunover2"];

	// Get mission number, important we do this early
	_mission 		= count wai_mission_data -1;

	_position		= [30] call find_position;
	[_mission,_position,"Easy","Slaughter House","MainBandit",true] call mission_init;
	
	diag_log 		format["WAI: [Mission:[Bandit] Slaughter House]: Starting... %1",_position];

	//Setup the crate
	_crate_type 	= crates_small call BIS_fnc_selectRandom;
	_crate 			= createVehicle [_crate_type,[(_position select 0) + 2.5,(_position select 1),0], [], 0, "CAN_COLLIDE"];
	[_crate] call wai_crate_setup;

	//Medical Supply Camp
//Buildings 
_baserunover0 = createVehicle ["Land_aif_tovarna1",[(_position select 0) - 0.01, (_position select 1) - 0.01,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover1 = createVehicle ["Land_stand_meat_EP1",[(_position select 0) - 4, (_position select 1) + 2,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover2 = createVehicle ["Land_stand_meat_EP1",[(_position select 0) - 2, (_position select 1) + 2,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover3 = createVehicle ["Land_stand_meat_EP1", [(_position select 0) + 0.001, (_position select 1) + 2,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover4 = createVehicle ["Land_stand_meat_EP1", [(_position select 0) - 1, (_position select 1) + 2,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover5 = createVehicle ["Land_stand_meat_EP1", [(_position select 0) + 2, (_position select 1) + 2,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover6 = createVehicle ["Land_stand_meat_EP1",[(_position select 0) + 4, (_position select 1) + 2,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover7 = createVehicle ["Mass_grave",[(_position select 0) - 3, (_position select 1) + 12,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover8 = createVehicle ["Mass_grave",[(_position select 0) + 4, (_position select 1) + 12,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover9 = createVehicle ["Mass_grave", [(_position select 0) + 0.01, (_position select 1) - 9,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover10 = createVehicle ["Mass_grave", [(_position select 0) - 0.3, (_position select 1) + 26,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover11 = createVehicle ["Axe_woodblock", [(_position select 0) - 4, (_position select 1) - 14,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover12 = createVehicle ["Land_Table_EP1",[(_position select 0) + 2, (_position select 1) - 2,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover13 = createVehicle ["MAP_icebox",[(_position select 0) - 2, (_position select 1) - 0.01,-0.02],[], 0, "CAN_COLLIDE"];
	_baserunover 	= [_baserunover0,_baserunover1,_baserunover2,_baserunover3,_baserunover4,_baserunover5,_baserunover6,_baserunover7,_baserunover8,_baserunover9,_baserunover10,_baserunover11,_baserunover12,_baserunover13];
	
	_directions = [0,0.3693,0.3693,0.3693,0.3693,0.3693,0.3693,0,188,33,0,-25,0,0];
	{ _x setDir (_directions select _forEachIndex) } forEach _baserunover;
	
	{ _x setVectorUp surfaceNormal position  _x; } count _baserunover;

	//Troops
	[[(_position select 0) + 9, (_position select 1) - 13, 0],4,"Easy",["Random","AT"],4,"Random","Hero","Random","Hero",_mission] call spawn_group;
	[[(_position select 0) + 13, (_position select 1) + 15, 0],4,"Easy","Random",4,"Random","Hero","Random","Hero",_mission] call spawn_group;
	[[(_position select 0) - 23, (_position select 1) - 25, 0],4,"Easy","Random",4,"Random","Hero","Random","Hero",_mission] call spawn_group;
	[[(_position select 0) - 13, (_position select 1) + 15, 0],4,"Easy","Random",4,"Random","Hero","Random","Hero",_mission] call spawn_group;

	//Condition
	_complete = [
		[_mission,_crate],				// mission number and crate
		["crate"],						// ["crate"], or ["kill"], or ["assassinate", _unitGroup],
		[_baserunover], 				// cleanup objects
		"Something smells funky at the Old Slaughter House....check your map",	// mission announcement
		"Survivors have secured the Slaughter House",								// mission success
		"Survivors have unearthed a mass grave of heroes...mission failed"							// mission fail
	] call mission_winorfail;

	if(_complete) then {
		[_crate,10,5,[6,crate_items_chainbullets],3,[2,crate_backpacks_large]] call dynamic_crate;
	};

	diag_log format["WAI: [Mission:[Bandit] slaughter house]: Ended at %1",_position];

	b_missionsrunning = b_missionsrunning - 1;
};