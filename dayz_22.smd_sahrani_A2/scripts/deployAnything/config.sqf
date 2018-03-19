//  **FORMAT** -- (note no comma after last array entry)
//
//  DZE_DEPLOYABLES_CONFIG = [
//      [_clickItem,_deployOffset,_packDistance,_damageLimit,_packAny,_cargo,_ammo,_hive,_plot,_simulation,_road,_deployables,_near,_parts,_condition],
//      [_clickItem,_deployOffset,_packDistance,_damageLimit,_packAny,_cargo,_ammo,_hive,_plot,_simulation,_road,_deployables,_near,_parts,_condition],
//      [...more stuff here...]
//  ];
//    
//  parameter    | description                                                         |  type  | example
// --------------|---------------------------------------------------------------------|--------|--------
// _clickItem    | class name of the item to click on                                  | string | "ItemToolbox"
// _deployOffset | [_side,_front,_up] array to offset the deployable when buiding      | array  | [0,2,1]
// _packDistance | how close does the packer need to be to pack the object?            | number | 5
// _damageLimit  | item can't be repacked if damage is > this. (-1 = no re-packing)    | number | 0.1
// _packAny      | can anyone repack the deployable?                                   | bool   | false
// _cargo        | clear the cargo of the deployable?                                  | bool   | false
// _ammo         | should vehicle ammo be cleared? (does not persist through restart)  | bool   | true
// _hive         | write deployable to database?                                       | bool   | false
// _plot         | require a plot from the owner to build the deployable?              | bool   | false
// _simulation   | enable simulation (movement/damage) for the object? (true for cars) | bool   | true
// _road         | enable road building for this object?                               | bool   | true
// _deployables  | array of class names that can be deployed with this method          | array  | ["MMT_Civ"]
// _near         | array of items required nearby to build (workshop/fire/fueltank)    | array  | []
// _parts        | array of parts required to build (will be taken from player)        | array  | ["ItemToolbox"]
// _condition    | string of code to evaluate to determine whether action is shown     | string | "!(isNull player) && {(getPlayerUID player) in DZE_DEPLOYABLE_ADMINS}"

DZE_DEPLOYABLES_CONFIG = [
	// deploy a non-permanent bike from a toolbox right in front of the player that can be re-packed by the owner as long as it's under 10% damage
	["ItemToolbox",[0,6,1],5,0.1,false,false,false,false,false,true,true,["MMT_Civ"],[],["ItemToolbox"],"true"],
	["ItemToolbox",[0,6,1],5,0.1,false,false,false,false,false,true,true,["PBX"],[],["ItemToolbox","PartEngine","PartGeneric","PartFueltank"],"true"],
	["ItemToolbox",[0,6,1],5,0.1,false,false,false,false,false,true,true,["ATV_US_EP1"],[],["ItemToolbox","PartEngine","PartGeneric","PartFueltank"],"true"],
	["ItemToolbox",[0,6,1],5,0.1,false,false,false,false,false,true,true,["AH6J_EP1_SMD_MAGPI"],[],["ItemToolbox","PartEngine","PartGeneric","PartVRotor"],"true"]
	// deploy fortifications from etool 3 meters in front of player that are permanent until server restart
	//["ItemEtool",[0,3,0],5,-1,false,true,false,true,false,false,["Land_fort_rampart","Fort_StoneWall_EP1","Land_fort_bagfence_round"],[],["ItemEtool"],"true"],
	// deploy a permanent helicopter from ruby 5 meters in front of player that can be re-packed by anyone as long as it's under 10% damage
	//["ItemToolbox",[0,50,2],5,0.9,true,true,false,true,true,false,true,["Land_LHD_house_1","Land_LHD_house_2","Land_LHD_elev_R","Land_LHD_1","Land_LHD_2","Land_LHD_3","Land_LHD_4","Land_LHD_5","Land_LHD_6"],[],["ItemRuby""metal_panel_kit","metal_panel_kit","metal_panel_kit","metal_panel_kit","metal_panel_kit","metal_panel_kit"],"true"],
	//["ItemSandbagExLarge5x",[0,8,0],5,-1,false,true,true,true,false,false,["Land_fortified_nest_big","Base_WarfareBBarrier10xTall","Land_Fort_Watchtower_EP1","MAP_fort_watchtower"],[],["ItemSandbagExLarge5x","ItemSandbagExLarge5x","ItemSandbagExLarge5x"],"true"],
	//["PartWoodPile",[0,2,0],5,1,true,true,true,true,false,false,["HeliHCivil","FlagCarrierTFKnight_EP1","MAP_MASH","Misc_Cargo1B_military","MAP_pumpa"],[],["ItemTankTrap","PartGeneric","PartGeneric","PartGeneric","PartWoodPile"],"true"],
	//["ItemSapphire",[0,2,0],5,1,true,true,true,true,false,false,["SPG9_TK_INS_EP1","M252","KORD_high_UN_EP1","Stinger_Pod_US_EP1","DSHKM_CDF","M2StaticMG","ZU23_CDF","TOW_TriPod_US_EP1","M119","D30"],[],["ItemSapphire","ItemBriefcase100oz","ItemBriefcase100oz"],"true"],
	//["ItemCanvas",[0,9,2],5,0.9,true,true,false,true,true,false,true,["BRDM2_HQ_TK_GUE_unfolded_EP1","M1130_HQ_unfolded_EP1","US_WarfareBBarracks_EP1","TK_GUE_WarfareBBarracks_EP1""CDF_WarfareBBarracks","USMC_WarfareBBarracks","WarfareBDepot","CDF_WarfareBFieldhHospital","USMC_WarfareBFieldhHospital"],[],["ItemPole","ItemCanvas","ItemCanvas","ItemPole","ItemSandbagExLarge5x","ItemSandbagExLarge5x"],"true"],
	//["ItemObsidian",[0,50,2],5,0.9,true,true,false,true,true,false,true,["Land_aif_hotel_bio","mbg_brickhouse_01_EO","mbg_apartments_big_04_EO","Land_MBG_Garage_Single_A","Land_MBG_Garage_Single_B","Land_MBG_Garage_Single_C","Land_MBG_Garage_Single_D"],[],["ItemObsidian","PartPlankPack","PartPlankPack","PartPlankPack","CinderBlocks","CinderBlocks","CinderBlocks","CinderBlocks","MortarBucket","MortarBucket","ItemCorrugated","ItemCorrugated"],"true"],
	//["CinderBlocks",[0,2,0],5,1,true,true,true,true,false,false,["MBG_Cinderwall_5_InEditor","MBG_Cinderwall_2p5_InEditor","MBG_Cinderwall_5_Corner_InEditor","MBG_Cinderwall_5_Gate_InEditor","mbg_cinderwall_5_low_InEditor","MBG_Cinderwall_5_SteelDoor_InEditor","MBG_Cinderwall_5_WoodDoor_InEditor"],[],["CinderBlocks","CinderBlocks","CinderBlocks","CinderBlocks","MortarBucket"],"true"],
	//["ItemTopaz",[0,2,0],5,1,true,true,true,true,false,false,["MBG_Killhouse_2_InEditor","MBG_Killhouse_1_InEditor","MBG_Warehouse_InEditor"],[],["ItemTopaz","PartPlankPack","PartPlankPack","PartPlankPack","CinderBlocks","CinderBlocks","CinderBlocks","CinderBlocks","MortarBucket","MortarBucket","ItemCorrugated","ItemCorrugated"],"true"]

	];

// **DZE_DEPLOYABLE_NAME_MAP format
//  
//  DZE_DEPLOYABLE_NAME_MAP = [
//      [_class,_name],
//      [_class,_name],
//      [... more ...]
//  ];
//
//  parameter    | description                                                         |  type  | example
// --------------|---------------------------------------------------------------------|--------|--------
// _class        | class name of the item you want to replace the name of              | string | "Notebook"
// _name         | new name to display when right clicking                             | string | "Macbook Pro"
//
DZE_DEPLOYABLE_NAME_MAP = [
	["Notebook","Macbook Pro"],
	["HeliHCivil","Heli Pad"]
];

DZE_DEPLOYABLE_ADMINS = [];
