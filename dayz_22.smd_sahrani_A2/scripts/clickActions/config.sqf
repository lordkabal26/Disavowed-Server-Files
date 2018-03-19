//  DZE_CLICK_ACTIONS
//      This is where you register your right-click actions
//  FORMAT -- (no comma after last array entry)
//      [_classname,_text,_execute,_condition],
//  PARAMETERS
//  _classname  : the name of the class to click on 
//                  (example = "ItemBloodbag")
//  _text       : the text for the option that is displayed when right clicking on the item 
//                  (example = "Self Transfuse")
//  _execute    : compiled code to execute when the option is selected 
//                  (example = "execVM 'my\scripts\self_transfuse.sqf';")
//  _condition  : compiled code evaluated to determine whether or not the option is displayed
//                  (example = {true})
//  EXAMPLE -- see below for some simple examples

DZE_CLICK_ACTIONS = [
    ["ItemGPS","Scan Nearby","if(isNil 'DZE_CLICK_ACTIONS_GPS_RANGE') then {DZE_CLICK_ACTIONS_GPS_RANGE = 1500;};DZE_CLICK_ACTIONS_ZOMBIE_COUNT = count ((position player) nearEntities ['zZombie_Base',DZE_CLICK_ACTIONS_GPS_RANGE]); DZE_CLICK_ACTIONS_MAN_COUNT = count ((position player) nearEntities ['CAManBase',DZE_CLICK_ACTIONS_GPS_RANGE]); format['Within %1 Meters: %2 AI/players, %3 zombies, %4 vehicles',DZE_CLICK_ACTIONS_GPS_RANGE,DZE_CLICK_ACTIONS_MAN_COUNT - DZE_CLICK_ACTIONS_ZOMBIE_COUNT,count ((position player) nearEntities ['zZombie_Base',DZE_CLICK_ACTIONS_GPS_RANGE]),count ((position player) nearEntities ['allVehicles',DZE_CLICK_ACTIONS_GPS_RANGE]) - DZE_CLICK_ACTIONS_MAN_COUNT] call dayz_rollingMessages;","true"],
    ["ItemGPS","Range Up"   ,"if(isNil 'DZE_CLICK_ACTIONS_GPS_RANGE') then {DZE_CLICK_ACTIONS_GPS_RANGE = 1500;};DZE_CLICK_ACTIONS_GPS_RANGE = (DZE_CLICK_ACTIONS_GPS_RANGE + 100) min 2500; format['GPS RANGE: %1',DZE_CLICK_ACTIONS_GPS_RANGE] call dayz_rollingMessages;","true"],
    ["ItemGPS","Range Down" ,"if(isNil 'DZE_CLICK_ACTIONS_GPS_RANGE') then {DZE_CLICK_ACTIONS_GPS_RANGE = 1500;};DZE_CLICK_ACTIONS_GPS_RANGE = (DZE_CLICK_ACTIONS_GPS_RANGE - 100) max 1000; format['GPS RANGE: %1',DZE_CLICK_ACTIONS_GPS_RANGE] call dayz_rollingMessages;","true"],
    ["ItemMap","Identify Keys","execVM 'scripts\locateVehicle.sqf';","true"],
    ["ItemKey","Eject Passengers not in group","spawn remoteVehicle;","true",1],
    ["ItemKey","Toggle engine on/off","spawn remoteVehicle;","true",2],
    ["ItemKey","Unlock vehicle","spawn remoteVehicle;","true",3],
    ["ItemKey","Lock vehicle","spawn remoteVehicle;","true",4],
    ["ItemKey","Toggle Lights on/off","spawn remoteVehicle;","true",5],
	["ItemRadio","Toggle Power","execVM 'scripts\radio\switch_on_off.sqf';","true"],
	["ItemAmethyst","Start Crafting!","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'Custom\Buildables\Amethyst.sqf';","true"],
	["ItemCitrine","Start Crafting!","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'Custom\Buildables\Citrine.sqf';","true"],
	["ItemEmerald","Start Crafting!","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'Custom\Buildables\Emerald.sqf';","true"],
	["ItemObsidian","Start Crafting!","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'Custom\Buildables\Obsidian.sqf';","true"],
	["ItemRuby","Start Crafting!","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'Custom\Buildables\Ruby.sqf';","true"],
	["ItemSapphire","Start Crafting!","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'Custom\Buildables\Sapphire.sqf';","true"],
	["ItemTopaz","Start Crafting!","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'Custom\Buildables\Topaz.sqf';","true"],
	["ItemLightbulb","Start Crafting!","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'Custom\Buildables\Lights.sqf';","true"],
	["ItemBriefcase_Base","Open Mistery Briefcase","execVM 'mbc\open_brief.sqf';","true"]
];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular_Vector","View Distance:","systemChat('Change View Distance Locally. Click on one of the distance options');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular_Vector","400 Meters","setViewDistance 400; systemChat('ViewDistance: 400'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular_Vector","600 Meters","setViewDistance 600; systemChat('ViewDistance: 600'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular_Vector","800 Meters","setViewDistance 800; systemChat('ViewDistance: 800'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular_Vector","1000 Meters","setViewDistance 1000; systemChat('ViewDistance: 1000'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular_Vector","1250 Meters","setViewDistance 1250; systemChat('ViewDistance: 1250'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular_Vector","1500 Meters","setViewDistance 1500; systemChat('ViewDistance: 1500'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular_Vector","1750 Meters","setViewDistance 1750; systemChat('ViewDistance: 1750'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular_Vector","2000 Meters","setViewDistance 2000; systemChat('ViewDistance: 2000'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular_Vector","3000 Meters","setViewDistance 3000; systemChat('ViewDistance: 3000'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular_Vector","4000 Meters","setViewDistance 4000; systemChat('ViewDistance: 4000'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular_Vector","5000 Meters","setViewDistance 5000; systemChat('ViewDistance: 5000'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular","View Distance:","systemChat('Change View Distance Locally. Click on one of the distance options');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular","400 Meters","setViewDistance 400; systemChat('ViewDistance: 400'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular","600 Meters","setViewDistance 600; systemChat('ViewDistance: 600'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular","800 Meters","setViewDistance 800; systemChat('ViewDistance: 800'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular","1000 Meters","setViewDistance 1000; systemChat('ViewDistance: 1000'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular","1250 Meters","setViewDistance 1250; systemChat('ViewDistance: 1250'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular","1500 Meters","setViewDistance 1500; systemChat('ViewDistance: 1500'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular","1750 Meters","setViewDistance 1750; systemChat('ViewDistance: 1750'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular","2000 Meters","setViewDistance 2000; systemChat('ViewDistance: 2000'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular","3000 Meters","setViewDistance 3000; systemChat('ViewDistance: 3000'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular","4000 Meters","setViewDistance 4000; systemChat('ViewDistance: 4000'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]];
DZE_CLICK_ACTIONS = DZE_CLICK_ACTIONS + [["Binocular","5000 Meters","setViewDistance 5000; systemChat('ViewDistance: 5000'); systemChat('Warning: Higher the view distance Lower the FPS');","true"]];