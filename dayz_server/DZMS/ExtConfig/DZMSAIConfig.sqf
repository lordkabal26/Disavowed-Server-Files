/*
	DZMSAIConfig.sqf
	This is a configuration for the AI that spawn at missions.
	This includes their skin, weapons, gear, and skills.
	You can adjust these to your liking, but it is for advanced users.
*/

///////////////////////////////////////////////
// Array of skin classnames for the AI to use
DZMSBanditSkins = ["GER_Soldier_EP1","GER_Soldier_MG_EP1","GER_Soldier_Medic_EP1","GER_Soldier_Scout_EP1","GER_Soldier_TL_EP1"];

////////////////////////
// Array of AI Skills
DZMSSkills0 = [
	["aimingAccuracy",0.10,0.125],
	["aimingShake",0.45,0.55],
	["aimingSpeed",0.45,0.55],
	["endurance",0.40,0.50],
	["spotDistance",0.30,0.45],
	["spotTime",0.30,0.45],
	["courage",0.40,0.60],
	["reloadSpeed",0.50,0.60],
	["commanding",0.40,0.50],
	["general",0.40,0.60]
];

DZMSSkills1 = [
	["aimingAccuracy",0.125,0.15],
	["aimingShake",0.60,0.70],
	["aimingSpeed",0.60,0.70],
	["endurance",0.55,0.65],
	["spotDistance",0.45,0.60],
	["spotTime",0.45,0.60],
	["courage",0.55,0.75],
	["reloadSpeed",0.60,0.70],
	["commanding",0.55,0.65],
	["general",0.55,0.75]
];

DZMSSkills2 = [
	["aimingAccuracy",0.15,0.20],
	["aimingShake",0.75,0.85],
	["aimingSpeed",0.70,0.80],
	["endurance",0.70,0.80],
	["spotDistance",0.60,0.75],
	["spotTime",0.60,0.75],
	["courage",0.70,0.90],
	["reloadSpeed",0.70,0.80],
	["commanding",0.70,0.90],
	["general",0.70,0.90]
];

DZMSSkills3 = [	
	["aimingAccuracy",0.20,0.25],
	["aimingShake",0.85,0.95],
	["aimingSpeed",0.80,0.90],
	["endurance",0.80,0.90],
	["spotDistance",0.70,0.85],
	["spotTime",0.70,0.85],
	["courage",0.80,1.00],
	["reloadSpeed",0.80,0.90],
	["commanding",0.80,0.90],
	["general",0.80,1.00]
];

//////////////////////////////////////////////////////////////
// This is the primary weaponlist that can be assigned to AI


DZMSWeps = [

//Epoch Guns
"AK74_DZ",
"AK74_Kobra_DZ",
"AKM_DZ",
"AKS74U_DZ",
"Bizon_SD_DZ",
"DMR_DZ",
"FNFAL_DZ",
"FN_FAL_ANPVS4_DZE",
"G36A_Camo_DZ",
"G36C_camo",
"G36C_DZ",
"G36K_Camo_DZ",
"L85_Holo_DZ",
"M1014_DZ",
"M14_CCO_DZ",
"M16A2_DZ",
"M16A2_GL_DZ",
"M16A4_ACOG_DZ",
"M240_DZ",
"M249_DZ",
"M24_DZ",
"M40A3_Gh_DZ",
"M4A1_AIM_SD_camo",
"M4A1_CCO_DZ",
"M4A1_DZ",
"M4A1_HWS_GL_camo",
"M4A3_CCO_EP1",
"Mk48_CCO_DZ",
"MP5_DZ",
"MP5_SD_DZ",
"Remington870_FL_DZ",
"RPK74_DZ",
"Sa58V_CCO_EP1",
"Sa58V_RCO_EP1",
"SA58_DZ",
"SVD_Gh_DZ",

//Overwatch ACR Black Variants
"FHQ_ACR_BLK_CCO",
"FHQ_ACR_BLK_CCO_GL",
"FHQ_ACR_BLK_CCO_GL_SD",
"FHQ_ACR_BLK_CCO_SD",
"FHQ_ACR_BLK_G33",
"FHQ_ACR_BLK_G33_GL",
"FHQ_ACR_BLK_G33_GL_SD",
"FHQ_ACR_BLK_G33_SD",
"FHQ_ACR_BLK_HAMR",
"FHQ_ACR_BLK_HAMR_GL",
"FHQ_ACR_BLK_HAMR_GL_SD",
"FHQ_ACR_BLK_HAMR_SD",
"FHQ_ACR_BLK_HWS",
"FHQ_ACR_BLK_HWS_GL",
"FHQ_ACR_BLK_HWS_GL_SD",
"FHQ_ACR_BLK_HWS_SD",
"FHQ_ACR_BLK_IRN",
"FHQ_ACR_BLK_IRN_GL",
"FHQ_ACR_BLK_IRN_GL_SD",
"FHQ_ACR_BLK_IRN_SD",
"FHQ_ACR_BLK_RCO",
"FHQ_ACR_BLK_RCO_GL",
"FHQ_ACR_BLK_RCO_GL_SD",
"FHQ_ACR_BLK_RCO_SD",

//Overwatch ACR Snow Variants
"FHQ_ACR_SNW_CCO",
"FHQ_ACR_SNW_CCO_GL",
"FHQ_ACR_SNW_CCO_GL_SD",
"FHQ_ACR_SNW_CCO_SD",
"FHQ_ACR_SNW_G33",
"FHQ_ACR_SNW_G33_GL",
"FHQ_ACR_SNW_G33_GL_SD",
"FHQ_ACR_SNW_G33_SD",
"FHQ_ACR_SNW_HAMR",
"FHQ_ACR_SNW_HAMR_GL",
"FHQ_ACR_SNW_HAMR_GL_SD",
"FHQ_ACR_SNW_HAMR_SD",
"FHQ_ACR_SNW_HWS",
"FHQ_ACR_SNW_HWS_GL",
"FHQ_ACR_SNW_HWS_GL_SD",
"FHQ_ACR_SNW_HWS_SD",
"FHQ_ACR_SNW_IRN",
"FHQ_ACR_SNW_IRN_GL",
"FHQ_ACR_SNW_IRN_GL_SD",
"FHQ_ACR_SNW_IRN_SD",
"FHQ_ACR_SNW_RCO",
"FHQ_ACR_SNW_RCO_GL",
"FHQ_ACR_SNW_RCO_GL_SD",
"FHQ_ACR_SNW_RCO_SD",

//Overwatch ACR Tan Variants
"FHQ_ACR_TAN_CCO",
"FHQ_ACR_TAN_CCO_GL",
"FHQ_ACR_TAN_CCO_GL_SD",
"FHQ_ACR_TAN_CCO_SD",
"FHQ_ACR_TAN_G33",
"FHQ_ACR_TAN_G33_GL",
"FHQ_ACR_TAN_G33_GL_SD",
"FHQ_ACR_TAN_G33_SD",
"FHQ_ACR_TAN_HAMR",
"FHQ_ACR_TAN_HAMR_GL",
"FHQ_ACR_TAN_HAMR_GL_SD",
"FHQ_ACR_TAN_HAMR_SD",
"FHQ_ACR_TAN_HWS",
"FHQ_ACR_TAN_HWS_GL",
"FHQ_ACR_TAN_HWS_GL_SD",
"FHQ_ACR_TAN_HWS_SD",
"FHQ_ACR_TAN_IRN",
"FHQ_ACR_TAN_IRN_GL",
"FHQ_ACR_TAN_IRN_GL_SD",
"FHQ_ACR_TAN_IRN_SD",
"FHQ_ACR_TAN_RCO",
"FHQ_ACR_TAN_RCO_GL",
"FHQ_ACR_TAN_RCO_GL_SD",
"FHQ_ACR_TAN_RCO_SD",

//Overwatch ACR Woodland Variants
"FHQ_ACR_WDL_CCO",
"FHQ_ACR_WDL_CCO_GL",
"FHQ_ACR_WDL_CCO_GL_SD",
"FHQ_ACR_WDL_CCO_SD",
"FHQ_ACR_WDL_G33",
"FHQ_ACR_WDL_G33_GL",
"FHQ_ACR_WDL_G33_GL_SD",
"FHQ_ACR_WDL_G33_SD",
"FHQ_ACR_WDL_HAMR",
"FHQ_ACR_WDL_HAMR_GL",
"FHQ_ACR_WDL_HAMR_GL_SD",
"FHQ_ACR_WDL_HAMR_SD",
"FHQ_ACR_WDL_HWS",
"FHQ_ACR_WDL_HWS_GL",
"FHQ_ACR_WDL_HWS_GL_SD",
"FHQ_ACR_WDL_HWS_SD",
"FHQ_ACR_WDL_IRN",
"FHQ_ACR_WDL_IRN_GL",
"FHQ_ACR_WDL_IRN_GL_SD",
"FHQ_ACR_WDL_IRN_SD",
"FHQ_ACR_WDL_RCO",
"FHQ_ACR_WDL_RCO_GL",
"FHQ_ACR_WDL_RCO_GL_SD",
"FHQ_ACR_WDL_RCO_SD",

//Overwatch AK Variants
"vil_AEK2",
"vil_AEK_GL",
"vil_AeK_3",
"vil_AeK_23",
"vil_AeK_3_K",
"vil_AK_105",
"Vil_AK_105_c",
"vil_AK_101",
"vil_AK_103",
"vil_AK_107",
"Vil_AK_107_c",
"vil_ak12",
"vil_ak12_ap",
"vil_ak12_gp",
"vil_AK_47",
"vil_AK_47_49",
"vil_AK_47_m1",
"vil_AK_47",
"vil_AK_74_N",
"vil_AK_74P",
"vil_AK_74m",
"vil_AK_74m_p29",
"vil_AK_74m_EOT_Alfa",
"vil_AK_74m_gp_29",
"vil_AK_74m_gp",
"vil_AK_74m_EOT",
"vil_AK_74m_EOT_FSB",
"vil_AK_74m_EOT_FSB_60",
"vil_AK_74m_EOT_FSB_45",
"vil_AK_74m_c",
"vil_AK_74m_k",
"vil_AK_74m_PSO",
"vil_AKM",
"vil_AKM_GL",
"vil_AKMS",
"vil_AKMS_GP25",
"vil_AKMSB",
"vil_AKS_47",
"vil_AKS_74",
"vil_AKS_74_gp",
"vil_AKS_74p_gp",
"vil_AKS_74p",
"vil_AKS_74p_45",
"vil_AKs_74_u",
"vil_AKs_74_u45",
"Vil_AKS_74_UB",
"Vil_AKS_74_UN_kobra",
"vil_AMD63",
"vil_AMD",
"vil_Abakan",
"vil_Abakan_P29",
"vil_Abakan_gp",
"vil_AK_nato_m1",
"vil_ASH82",
"vil_MPi",
"vil_PMI74S",
"vil_PMI",
"vil_PMIS",
"vil_type88_1",
"vil_M64",
"vil_M70",
"vil_M70B",
"vil_AK_nato_m80",

//Overwatch Spare Guns
"vil_Galil",
"vil_Galil_arm",
"vil_SKS",

//Overwatch k98
"gms_k98",
"gms_k98_knife",
"gms_k98_rg",
"gms_k98zf39",

//Overwatch SCAR
"SCAR_L_CQC_CCO_SD",
"SCAR_L_CQC",
"SCAR_L_CQC_Holo",
"SCAR_L_CQC_EGLM_Holo",
"SCAR_L_STD_EGLM_RCO",
"SCAR_L_STD_HOLO",
"SCAR_L_STD_Mk4CQT",
"SCAR_H_CQC_CCO",
"SCAR_H_CQC_CCO_SD",
"SCAR_H_STD_EGLM_Spect",
"SCAR_H_LNG_Sniper",
"SCAR_H_LNG_Sniper_SD",

//Overwatch SMG
"vil_9a91",
"vil_9a91_c",
"vil_9a91_csd",
"vil_VAL",
"vil_VAL_C",
"vil_Groza_HG",
"vil_Groza_GL",
"vil_Groza_SC",
"vil_Groza_SD",
"vil_Vikhr",
"vil_vsk94",
"vil_MP5_EOTech",
"vil_MP5SD_EOTech",
"vil_uzimini",
"vil_uzimini_SD",
"vil_uzi",
"vil_uzi_c",
"vil_uzi_SD",

//Overwatch Snipers
"USSR_cheytacM200",
"USSR_cheytacM200_sd",
"vil_SVD_63",
"vil_SVD_N",
"vil_SVD_M",
"vil_SVD_P21",
"vil_SVD_S",
"FHQ_MSR_DESERT",
"FHQ_MSR_NV_DESERT",
"FHQ_MSR_NV_SD_DESERT",
"FHQ_MSR_SD_DESERT",
"FHQ_RSASS_TAN",
"FHQ_RSASS_SD_TAN",
"vil_SV_98_69",
"vil_SV_98",
"vil_SV_98_SD",
"vil_SVU",
"vil_SVU_A",
"vil_SVDK",
"FHQ_XM2010_DESERT",
"FHQ_XM2010_NV_DESERT",
"FHQ_XM2010_NV_SD_DESERT",
"FHQ_XM2010_SD_DESERT",
"vil_M76",

//Overwatch Tavor Variants
"RH_ctar21",
"RH_ctar21glacog",
"RH_ctar21m",
"RH_ctar21mgl",
"RH_star21",

//Overwatch G3 Variants
"vil_AG3",
"vil_G3a2",
"vil_G3a3",
"vil_G3an",
"vil_G3anb",
"vil_G3SG1",
"vil_G3sg1b",
"vil_G3TGS",
"vil_G3TGSb",
"vil_G3ZF",
"vil_G3zfb",
"vil_G3a4",
"vil_G3a4b",

//Overwatch Masada Variants
"RH_masacog",
"RH_masaim",
"RH_masbaim",
"RH_masb",
"RH_masbeotech",
"RH_mas",
"RH_massd",
"RH_massdacog",
"RH_masbsdacog",
"RH_massdaim",
"RH_masbsdaim",
"RH_masbsd",
"RH_massdeotech",
"RH_masbsdeotech",

//Overwatch LMG
"vil_RPK75_Romania",
"vil_M240_B",
"vil_M249_Para",
"skavil_M60",
"skavil_M60e3",
"vil_Mg3",
"vil_MG4",
"vil_MG4E",
"vil_PKP",
"vil_PKP_EOT",
"vil_PK",
"vil_PKM",
"vil_RPD",
"vil_RPK",
"vil_RPK75",
"vil_RPK74",
"vil_RPK74M",
"vil_RPK74M_P29",
"vil_RPK75_M72",
"vil_zastava_m84",

//Overwatch hk417 Variants
"RH_hk417",
"RH_hk417acog",
"RH_hk417aim",
"RH_hk417s",
"RH_hk417sacog",
"RH_hk417saim",
"RH_hk417seotech",
"RH_hk417eotech",
"RH_hk417sd",
"RH_hk417sdacog",
"RH_hk417sdaim",
"RH_hk417sdeotech",
"RH_hk417sdsp",
"RH_hk417sp",
"RH_hk417sglacog",
"RH_hk417sgl",
"RH_hk417sglaim",
"RH_hk417sgleotech",

//Overwatch hk416 Variants
"RH_hk416",
"RH_hk416glacog",
"RH_hk416gl",
"RH_hk416aim",
"RH_hk416glaim",
"RH_hk416s",
"RH_hk416sacog",
"RH_hk416sglacog",
"RH_hk416saim",
"RH_hk416sglaim",
"RH_hk416seotech",
"RH_hk416sgleotech",
"RH_hk416sgl",
"RH_hk416eotech",
"RH_hk416gleotech",
"RH_hk416sd",
"RH_hk416sdgl",
"RH_hk416sdglaim",
"RH_hk416sdeotech",
"RH_hk416sdgleotech",

//Overwatch G36 Variants
"vil_AG36KA4",
"vil_AG36KV",
"vil_G36KSKdes",
"vil_G36KA4",
"vil_G36KSKES",
"vil_G36KSKdesES",
"vil_G36KES",
"vil_G36KVZ",
"vil_G36KSK",
"vil_G36VA4Eot",
"vil_G36KV3",
"vil_G36KVA4",
"vil_G36KV3Des",
"vil_G36VA4",
"vil_AG36",
"vil_G36a2",
"vil_AG36A2",
"vil_G36CC",
"vil_G36E",

//Overwatch DMR Variants
"vil_HK417s",
"vil_M110",
"vil_M110sd",
"RH_m14",
"vil_M14G",
"RH_m14acog",
"RH_m14aim",
"RH_m14eot",
"RH_m1s",
"RH_m1sacog",
"RH_m1saim",
"RH_m1seot",
"RH_m1sshd",
"RH_m1ssp",
"RH_m1st",
"RH_m1stacog",
"RH_m1staim",
"RH_m1steot",
"RH_m1stshd",
"RH_m1stsp",
"RH_m21",
"vil_M21G",
"RH_sc2",
"RH_sc2acog",
"RH_sc2aim",
"RH_sc2eot",
"RH_sc2shd",
"RH_sc2sp",
"vil_SR25",
"vil_SR25SD"
];

/////////////////////////////////////////////////////////////
// These are gear sets that will be randomly given to the AI
// They are all the same, but can be customized.
DZMSGear0 = [
["ItemBandage","ItemBandage","ItemAntibiotic","ItemPainkiller","ItemSodaGrapeDrink","FoodCanTylers"],
["ItemKnife","ItemFlashlight"]
];

DZMSGear1 = [
["ItemBandage","ItemBandage","ItemPainkiller","ItemMorphine","ItemSodaRocketFuel","FoodGoatCooked"],
["ItemToolbox","ItemEtool"]
];

DZMSGear2 = [
["ItemBandage","ItemAntibacterialWipe","ItemBloodbag","ItemPainkiller","ItemSodaSacrite","FishCookedTrout"],
["ItemMatchbox","ItemHatchet"]
];

DZMSGear3 = [
["ItemBandage","ItemBandage","ItemMorphine","ItemHeatPack","ItemSodaRabbit","FoodMRE"],
["ItemCrowbar","ItemKeyKit"]
];

DZMSGear4 = [
["ItemBandage","ItemAntibacterialWipe","ItemEpinephrine","ItemBloodbag","ItemSodaMtngreen","FoodCanBoneboy"],
["ItemSledge","Binocular_Vector"]
];

////////////////////////////////////////////////////////////
// These are the backpacks that can be assigned to AI units.
DZMSPacklist = [
"DZ_Patrol_Pack_EP1",
"DZ_Assault_Pack_EP1",
"DZ_Czech_Vest_Pouch",
"DZ_TerminalPack_EP1",
"DZ_ALICE_Pack_EP1",
"DZ_TK_Assault_Pack_EP1",
"DZ_GunBag_EP1",
"DZ_British_ACU",
"DZ_CivilBackpack_EP1",
"DZ_Backpack_EP1",
"DZ_LargeGunBag_EP1"
];
