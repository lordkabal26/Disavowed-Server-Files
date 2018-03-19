if(isServer) then {

	/* GENERAL CONFIG */

		debug_mode					= false;		// enable debug
		
		use_staticspawnpoints		= false;			// setting this to true will disable the dynamic mission spawning system and enable server owners to define their own mission spawn points in WAI\configs\spawnpoints.sqf.
		
		use_blacklist				= true;			// You can edit the blacklist per map in file WAI\configs\blacklist.sqf.

	/* END GENERAL CONFIG */

	/* AI CONFIG */
		
		ai_show_remaining			= true;		//this will show the ai count in the mission markers.
		
		ai_hasMoney					= true; 		//If you have ZSC installed then setting this to true will place random amounts of coins in 50 coin increments in ai wallets.
		ai_moneyMultiplier			= 200;			//This value is multiplied by 50 to set the max amount of ZSC coins in ai wallets. ex. 200x50=10000 max coins.
		
		ai_clear_body 				= false;		// instantly clear bodies
		ai_clean_dead 				= true;			// clear bodies after certain amount of time
		ai_cleanup_time 			= 7200;			// time to clear bodies in seconds
		ai_clean_roadkill			= false; 		// clean bodies that are roadkills
		ai_roadkill_damageweapon	= 0;			// percentage of chance a roadkill will destroy weapon AI is carrying

		ai_bandit_combatmode		= "RED";		// combatmode of bandit AI
		ai_bandit_behaviour			= "COMBAT";		// behaviour of bandit AI

		ai_hero_combatmode			= "RED";		// combatmode of hero AI
		ai_hero_behaviour			= "COMBAT";		// behaviour of hero AI

		ai_friendly_behaviour		= false;		// make ai friendly towards comrades

		player_bandit				= -5000;		// this is the amount you declare someone to be a bandit on your server, bandit AI will not attack you if ai_friendly_behaviour is true
		player_hero					= 5000;			// this is the amount you declare someone to be a hero on your server, hero AI will not attack you if ai_friendly_behaviour is true

		ai_share_info				= true;			// AI share info on player position
		ai_share_distance			= 300;			// distance from killed AI for AI to share your rough position

		ai_kills_gain				= true;			// add kill to bandit/human kill score
		ai_humanity_gain			= true;			// gain humanity for killing AI
		ai_add_humanity				= 150;			// amount of humanity gained for killing a bandit AI
		ai_remove_humanity			= 150;			// amount of humanity lost for killing a hero AI
		ai_special_humanity			= 250;			// amount of humanity gain or loss for killing a special AI dependant on player alignment
		ai_coin_award				= true;  		// gain Money for killing AI
		
		ai_skill_extreme			= [["aimingAccuracy",1.00],["aimingShake",1.00],["aimingSpeed",1.00],["endurance",1.00],["spotDistance",1.00],["spotTime",1.00],["courage",1.00],["reloadSpeed",1.00],["commanding",1.00],["general",1.00]]; 	// Extreme
		ai_skill_hard				= [["aimingAccuracy",0.80],["aimingShake",0.80],["aimingSpeed",0.80],["endurance",1.00],["spotDistance",0.80],["spotTime",0.80],["courage",1.00],["reloadSpeed",1.00],["commanding",1.00],["general",1.00]]; 	// Hard
		ai_skill_medium				= [["aimingAccuracy",0.60],["aimingShake",0.60],["aimingSpeed",0.60],["endurance",1.00],["spotDistance",0.60],["spotTime",0.60],["courage",1.00],["reloadSpeed",1.00],["commanding",1.00],["general",1.00]];	// Medium
		ai_skill_easy				= [["aimingAccuracy",0.40],["aimingShake",0.50],["aimingSpeed",0.50],["endurance",1.00],["spotDistance",0.50],["spotTime",0.50],["courage",1.00],["reloadSpeed",1.00],["commanding",1.00],["general",1.00]];	// Easy
		ai_skill_random				= [ai_skill_extreme,ai_skill_hard,ai_skill_hard,ai_skill_hard,ai_skill_hard,ai_skill_medium,ai_skill_medium,ai_skill_medium,ai_skill_medium,ai_skill_easy];

		ai_static_useweapon			= true;	// Allows AI on static guns to have a loadout 	
		ai_static_weapons			= ["KORD_high_TK_EP1","DSHKM_Ins","M2StaticMG"];	// static guns

		ai_static_skills			= false;	// Allows you to set custom array for AI on static weapons. (true: On false: Off) 
		ai_static_array				= [["aimingAccuracy",0.20],["aimingShake",0.70],["aimingSpeed",0.75],["endurance",1.00],["spotDistance",0.70],["spotTime",0.50],["courage",1.00],["reloadSpeed",1.00],["commanding",1.00],["general",1.00]];

		ai_gear0					= [["ItemBandage","ItemBandage","ItemAntibiotic"],["ItemRadio","ItemMachete","ItemCrowbar"]];
		ai_gear1					= [["ItemBandage","ItemSodaPepsi","ItemMorphine"],["Binocular_Vector"]];
		ai_gear2					= [["ItemDocument","FoodCanFrankBeans","ItemHeatPack"],["ItemToolbox"]];
		ai_gear3					= [["ItemWaterbottle","ItemBloodbag"],["ItemCompass","ItemCrowbar"]];
		ai_gear4					= [["ItemBandage","ItemEpinephrine","ItemPainkiller"],["ItemGPS","ItemKeyKit"]];
		ai_gear_random				= [ai_gear0,ai_gear1,ai_gear2,ai_gear3,ai_gear4];	// Allows the possibility of random gear

		if (WAI_Overpoch) then {	/* Overwatch Weapons */
		ai_wep_owpistol				= ["RH_m9","RH_m9c","RH_m93r","RH_M9sd","RH_m9csd","RH_browninghp","vil_B_HP","RH_anac","RH_anacg","RH_python","RH_deagle","RH_Deagleg","RH_Deaglem","RH_Deaglemzb","RH_Deaglemz","RH_Deagles","vil_Glock","RH_g17","vil_Glock_o","RH_g17sd","RH_g18","RH_g19","RH_g19t","RH_tec9","RH_m1911","RH_m1911sd","RH_m1911old","RH_mk22","RH_mk22sd","RH_mk22v","RH_mk22vsd","RH_p38","RH_ppk","RH_mk2","RH_p226","RH_p226s","RH_bull","RH_tt33","RH_usp","RH_uspm","RH_uspsd","vil_USP45","vil_USP45SD","vil_USP","vil_USPSD","RH_vz61"];	// Overwatch Pistol Variants
		ai_wep_owak					= ["vil_AEK2","vil_AEK_GL","vil_AeK_3","vil_AeK_23","vil_AeK_3_K","vil_AK_105","Vil_AK_105_c","vil_AK_101","vil_AK_103","vil_AK_107","Vil_AK_107_c","vil_ak12","vil_ak12_ap","vil_ak12_gp","vil_AK_47","vil_AK_47_49","vil_AK_47_m1","vil_AK_47","vil_AK_74_N","vil_AK_74P","vil_AK_74m","vil_AK_74m_p29","vil_AK_74m_EOT_Alfa","vil_AK_74m_gp_29","vil_AK_74m_gp","vil_AK_74m_EOT","vil_AK_74m_EOT_FSB","vil_AK_74m_EOT_FSB_60","vil_AK_74m_EOT_FSB_45","vil_AK_74m_c","vil_AK_74m_k","vil_AK_74m_PSO","vil_AKM","vil_AKM_GL","vil_AKMS","vil_AKMS_GP25","vil_AKMSB","vil_AKS_47","vil_AKS_74","vil_AKS_74_gp","vil_AKS_74p_gp","vil_AKS_74p","vil_AKS_74p_45","vil_AKs_74_u","vil_AKs_74_u45","Vil_AKS_74_UB","Vil_AKS_74_UN_kobra","vil_AMD63","vil_AMD","vil_Abakan","vil_Abakan_P29","vil_Abakan_gp","vil_AK_nato_m1","vil_ASH82","vil_MPi","vil_PMI74S","vil_PMI","vil_PMIS","vil_type88_1","vil_M64","vil_M70","vil_M70B","vil_AK_nato_m80"];	// Overwatch AK Variants
		ai_wep_owspare				= ["vil_Galil","vil_Galil_arm","vil_SKS","gms_k98","gms_k98_knife","gms_k98_rg","gms_k98zf39"];
		ai_wep_owacrsd				= ["FHQ_ACR_BLK_CCO_GL_SD","FHQ_ACR_TAN_CCO_GL_SD","FHQ_ACR_SNW_CCO_GL_SD","FHQ_ACR_WDL_CCO_GL_SD","FHQ_ACR_BLK_CCO_SD","FHQ_ACR_TAN_CCO_SD","FHQ_ACR_SNW_CCO_SD","FHQ_ACR_WDL_CCO_SD","FHQ_ACR_BLK_G33_GL_SD","FHQ_ACR_TAN_G33_GL_SD","FHQ_ACR_SNW_G33_GL_SD","FHQ_ACR_WDL_G33_GL_SD","FHQ_ACR_BLK_G33_SD","FHQ_ACR_TAN_G33_SD","FHQ_ACR_SNW_G33_SD","FHQ_ACR_WDL_G33_SD","FHQ_ACR_BLK_HAMR_GL_SD","FHQ_ACR_TAN_HAMR_GL_SD","FHQ_ACR_SNW_HAMR_GL_SD","FHQ_ACR_WDL_HAMR_GL_SD","FHQ_ACR_BLK_HAMR_SD","FHQ_ACR_TAN_HAMR_SD","FHQ_ACR_SNW_HAMR_SD","FHQ_ACR_WDL_HAMR_SD","FHQ_ACR_BLK_HWS_GL_SD","FHQ_ACR_TAN_HWS_GL_SD","FHQ_ACR_SNW_HWS_GL_SD","FHQ_ACR_WDL_HWS_GL_SD","FHQ_ACR_BLK_HWS_SD","FHQ_ACR_TAN_HWS_SD","FHQ_ACR_SNW_HWS_SD","FHQ_ACR_WDL_HWS_SD","FHQ_ACR_BLK_IRN_GL_SD","FHQ_ACR_TAN_IRN_GL_SD","FHQ_ACR_SNW_IRN_GL_SD","FHQ_ACR_WDL_IRN_GL_SD","FHQ_ACR_BLK_RCO_GL_SD","FHQ_ACR_TAN_RCO_GL_SD","FHQ_ACR_SNW_RCO_GL_SD","FHQ_ACR_WDL_RCO_GL_SD","FHQ_ACR_BLK_RCO_SD","FHQ_ACR_TAN_RCO_SD","FHQ_ACR_SNW_RCO_SD","FHQ_ACR_WDL_RCO_SD","FHQ_ACR_BLK_IRN_SD","FHQ_ACR_TAN_IRN_SD","FHQ_ACR_SNW_IRN_SD","FHQ_ACR_WDL_IRN_SD"];	// Overwatch ACRSD Variants
		ai_wep_owacr				= ["FHQ_ACR_BLK_IRN","FHQ_ACR_TAN_IRN","FHQ_ACR_SNW_IRN","FHQ_ACR_WDL_IRN","FHQ_ACR_BLK_CCO","FHQ_ACR_TAN_CCO","FHQ_ACR_SNW_CCO","FHQ_ACR_WDL_CCO","FHQ_ACR_BLK_CCO_GL","FHQ_ACR_TAN_CCO_GL","FHQ_ACR_SNW_CCO_GL","FHQ_ACR_WDL_CCO_GL","FHQ_ACR_BLK_G33","FHQ_ACR_TAN_G33","FHQ_ACR_SNW_G33","FHQ_ACR_WDL_G33","FHQ_ACR_BLK_G33_GL","FHQ_ACR_TAN_G33_GL","FHQ_ACR_SNW_G33_GL","FHQ_ACR_WDL_G33_GL","FHQ_ACR_BLK_HAMR","FHQ_ACR_TAN_HAMR","FHQ_ACR_SNW_HAMR","FHQ_ACR_WDL_HAMR","FHQ_ACR_BLK_HAMR_GL","FHQ_ACR_TAN_HAMR_GL","FHQ_ACR_SNW_HAMR_GL","FHQ_ACR_WDL_HAMR_GL","FHQ_ACR_BLK_HWS","FHQ_ACR_TAN_HWS","FHQ_ACR_SNW_HWS","FHQ_ACR_WDL_HWS","FHQ_ACR_BLK_HWS_GL","FHQ_ACR_TAN_HWS_GL","FHQ_ACR_SNW_HWS_GL","FHQ_ACR_WDL_HWS_GL","FHQ_ACR_BLK_IRN_GL","FHQ_ACR_TAN_IRN_GL","FHQ_ACR_SNW_IRN_GL","FHQ_ACR_WDL_IRN_GL","FHQ_ACR_BLK_RCO","FHQ_ACR_TAN_RCO","FHQ_ACR_SNW_RCO","FHQ_ACR_WDL_RCO","FHQ_ACR_BLK_RCO_GL","FHQ_ACR_TAN_RCO_GL","FHQ_ACR_SNW_RCO_GL","FHQ_ACR_WDL_RCO_GL"];	// Overwatch ACR Variants
		ai_wep_owscar				= ["SCAR_L_CQC_CCO_SD","SCAR_L_CQC","SCAR_L_CQC_Holo","SCAR_L_CQC_EGLM_Holo","SCAR_L_STD_EGLM_RCO","SCAR_L_STD_HOLO","SCAR_L_STD_Mk4CQT","SCAR_H_CQC_CCO","SCAR_H_CQC_CCO_SD","SCAR_H_STD_EGLM_Spect","SCAR_H_LNG_Sniper","SCAR_H_LNG_Sniper_SD"];	// Overwatch SCAR Variants
		ai_wep_owsmg				= ["vil_9a91","vil_9a91_c","vil_9a91_csd","vil_VAL","vil_VAL_C","vil_Groza_HG","vil_Groza_GL","vil_Groza_SC","vil_Groza_SD","vil_Vikhr","vil_vsk94","vil_MP5_EOTech","vil_MP5SD_EOTech","vil_uzimini","vil_uzimini_SD","vil_uzi","vil_uzi_c","vil_uzi_SD"];	// Overwatch SMG Variants
		ai_wep_owsniper				= ["USSR_cheytacM200","USSR_cheytacM200_sd","vil_SVD_63","vil_SVD_N","vil_SVD_M","vil_SVD_P21","vil_SVD_S","FHQ_MSR_DESERT","FHQ_MSR_NV_DESERT","FHQ_MSR_NV_SD_DESERT","FHQ_MSR_SD_DESERT","FHQ_RSASS_TAN","FHQ_RSASS_SD_TAN","vil_SV_98_69","vil_SV_98","vil_SV_98_SD","vil_SVDK","FHQ_XM2010_DESERT","FHQ_XM2010_NV_DESERT","FHQ_XM2010_NV_SD_DESERT","FHQ_XM2010_SD_DESERT"];	// Overwatch Sniper Variants
		ai_wep_owtar				= ["RH_ctar21","RH_ctar21glacog","RH_ctar21m","RH_ctar21mgl","RH_star21"];	// Overwatch TAR Variants
		ai_wep_owg3					= ["vil_AG3","vil_G3a2","vil_G3a3","vil_G3an","vil_G3anb","vil_G3SG1","vil_G3sg1b","vil_G3TGS","vil_G3TGSb","vil_G3ZF","vil_G3zfb","vil_G3a4","vil_G3a4b"];	// Overwatch G3 Variants
		ai_wep_owmas				= ["RH_masacog","RH_masaim","RH_masbaim","RH_masb","RH_masbeotech","RH_mas","RH_massd","RH_massdacog","RH_masbsdacog","RH_massdaim","RH_masbsdaim","RH_masbsd","RH_massdeotech","RH_masbsdeotech"];	// Overwatch MAS Variants
		ai_wep_owlmg				= ["vil_RPK75_Romania","vil_M240_B","vil_M249_Para","skavil_M60","skavil_M60e3","vil_Mg3","vil_MG4","vil_MG4E","vil_PKP","vil_PKP_EOT","vil_PK","vil_PKM","vil_RPD","vil_RPK","vil_RPK75","vil_RPK74","vil_RPK74M","vil_RPK74M_P29","vil_RPK75_M72","vil_zastava_m84"];	// Overwatch LMG Variants
		ai_wep_owhk417				= ["RH_hk417","RH_hk417acog","RH_hk417aim","RH_hk417s","RH_hk417sacog","RH_hk417saim","RH_hk417seotech","RH_hk417eotech","RH_hk417sd","RH_hk417sdacog","RH_hk417sdaim","RH_hk417sdeotech","RH_hk417sdsp","RH_hk417sp","RH_hk417sglacog","RH_hk417sgl","RH_hk417sglaim","RH_hk417sgleotech"];	// Overwatch HK417 Variants
		ai_wep_owhk416				= ["RH_hk416","RH_hk416glacog","RH_hk416gl","RH_hk416aim","RH_hk416glaim","RH_hk416s","RH_hk416sacog","RH_hk416sglacog","RH_hk416saim","RH_hk416sglaim","RH_hk416seotech","RH_hk416sgleotech","RH_hk416sgl","RH_hk416eotech","RH_hk416gleotech","RH_hk416sd","RH_hk416sdgl","RH_hk416sdglaim","RH_hk416sdeotech","RH_hk416sdgleotech"];	// Overwatch HK416
		ai_wep_owg36				= ["vil_AG36KA4","vil_AG36KV","vil_G36KSKdes","vil_G36KA4","vil_G36KSKES","vil_G36KSKdesES","vil_G36KES","vil_G36KVZ","vil_G36KSK","vil_G36VA4Eot","vil_G36KV3","vil_G36KVA4","vil_G36KV3Des","vil_G36VA4","vil_AG36","vil_G36a2","vil_AG36A2","vil_G36CC","vil_G36E"];	// Overwatch G36 Variants
		ai_wep_owdmr				= ["vil_HK417s","vil_M110","vil_M110sd","RH_m14","vil_M14G","RH_m14acog","RH_m14aim","RH_m14eot","RH_m1s","RH_m1sacog","RH_m1saim","RH_m1seot","RH_m1sshd","RH_m1ssp","RH_m1st","RH_m1stacog","RH_m1staim","RH_m1steot","RH_m1stshd","RH_m1stsp","RH_m21","vil_M21G","RH_sc2","RH_sc2acog","RH_sc2aim","RH_sc2eot","RH_sc2shd","RH_sc2sp","vil_SR25","vil_SR25SD"];	// Overwatch DMR Variants
		};
		
		/* Epoch Weapons */
		ai_wep_g36 					= ["G36_C_SD_camo","G36C_DZ","G36C_CCO_DZ","G36C_Holo_DZ","G36C_ACOG_DZ","G36C_SD_DZ","G36C_CCO_SD_DZ","G36C_Holo_SD_DZ","G36C_ACOG_SD_DZ","G36C_camo","G36A_Camo_DZ","G36K_Camo_DZ","G36K_Camo_SD_DZ"];
		ai_wep_m16 					= ["M16A2_DZ","M16A2_GL_DZ","M16A4_DZ","M16A4_CCO_DZ","M16A4_Holo_DZ","M16A4_ACOG_DZ","M16A4_GL_DZ","M16A4_FL_DZ","M16A4_MFL_DZ","M16A4_CCO_FL_DZ","M16A4_Holo_FL_DZ","M16A4_ACOG_FL_DZ","M16A4_GL_FL_DZ","M16A4_CCO_MFL_DZ","M16A4_Holo_MFL_DZ","M16A4_ACOG_MFL_DZ","M16A4_GL_MFL_DZ","M16A4_GL_CCO_DZ","M16A4_GL_Holo_DZ","M16A4_GL_ACOG_DZ","M16A4_GL_CCO_FL_DZ","M16A4_GL_Holo_FL_DZ","M16A4_GL_ACOG_FL_DZ","M16A4_GL_CCO_MFL_DZ","M16A4_GL_Holo_MFL_DZ","M16A4_GL_ACOG_MFL_DZ"];
		ai_wep_m4 					= ["M4A1_AIM_SD_camo","M4A1_DZ","M4A1_FL_DZ","M4A1_MFL_DZ","M4A1_SD_DZ","M4A1_SD_FL_DZ","M4A1_SD_MFL_DZ","M4A1_CCO_DZ","M4A1_CCO_FL_DZ","M4A1_CCO_MFL_DZ","M4A1_CCO_SD_DZ","M4A1_CCO_SD_FL_DZ","M4A1_CCO_SD_MFL_DZ","M4A1_Holo_DZ","M4A1_Holo_FL_DZ","M4A1_Holo_MFL_DZ","M4A1_Holo_SD_DZ","M4A1_Holo_SD_FL_DZ","M4A1_Holo_SD_MFL_DZ","M4A1_ACOG_DZ","M4A1_ACOG_FL_DZ","M4A1_ACOG_MFL_DZ","M4A1_ACOG_SD_DZ","M4A1_ACOG_SD_FL_DZ","M4A1_ACOG_SD_MFL_DZ","M4A1_GL_DZ","M4A1_GL_FL_DZ","M4A1_GL_MFL_DZ","M4A1_GL_SD_DZ","M4A1_GL_SD_FL_DZ","M4A1_GL_SD_MFL_DZ","M4A1_GL_CCO_DZ","M4A1_GL_CCO_FL_DZ","M4A1_GL_CCO_MFL_DZ","M4A1_GL_CCO_SD_DZ","M4A1_GL_CCO_SD_FL_DZ","M4A1_GL_CCO_SD_MFL_DZ","M4A1_GL_Holo_DZ","M4A1_GL_Holo_FL_DZ","M4A1_GL_Holo_MFL_DZ","M4A1_GL_Holo_SD_DZ","M4A1_GL_Holo_SD_FL_DZ","M4A1_GL_Holo_SD_MFL_DZ","M4A1_GL_ACOG_DZ","M4A1_GL_ACOG_FL_DZ","M4A1_GL_ACOG_MFL_DZ","M4A1_GL_ACOG_SD_DZ","M4A1_GL_ACOG_SD_FL_DZ","M4A1_GL_ACOG_SD_MFL_DZ","M4A1_HWS_GL_camo","M4A1_HWS_GL_SD_Camo","M4A3_CCO_EP1"];
		ai_wep_scar 				= ["SCAR_L_CQC","SCAR_L_CQC_CCO_SD","SCAR_L_CQC_Holo","SCAR_L_CQC_EGLM_Holo","SCAR_L_STD_EGLM_RCO","SCAR_L_STD_HOLO","SCAR_L_STD_Mk4CQT","SCAR_H_CQC_CCO","SCAR_H_CQC_CCO_SD","SCAR_H_STD_EGLM_Spect"];
		ai_wep_sa58 				= ["SA58_DZ","SA58_RIS_DZ","SA58_RIS_FL_DZ","SA58_RIS_MFL_DZ","SA58_CCO_DZ","SA58_CCO_FL_DZ","SA58_CCO_MFL_DZ","SA58_Holo_DZ","SA58_Holo_FL_DZ","SA58_Holo_MFL_DZ","SA58_ACOG_DZ","SA58_ACOG_FL_DZ","SA58_ACOG_MFL_DZ","Sa58V_CCO_EP1","Sa58V_RCO_EP1"];
		ai_wep_l85 					= ["L85A2_DZ","L85A2_FL_DZ","L85A2_MFL_DZ","L85A2_SD_DZ","L85A2_SD_FL_DZ","L85A2_SD_MFL_DZ","L85A2_CCO_DZ","L85A2_CCO_FL_DZ","L85A2_CCO_MFL_DZ","L85A2_CCO_SD_DZ","L85A2_CCO_SD_FL_DZ","L85A2_CCO_SD_MFL_DZ","L85A2_Holo_DZ","L85A2_Holo_FL_DZ","L85A2_Holo_MFL_DZ","L85A2_Holo_SD_DZ","L85A2_Holo_SD_FL_DZ","L85A2_Holo_SD_MFL_DZ","L85A2_ACOG_DZ","L85A2_ACOG_FL_DZ","L85A2_ACOG_MFL_DZ","L85A2_ACOG_SD_DZ","L85A2_ACOG_SD_FL_DZ","L85A2_ACOG_SD_MFL_DZ"];
		ai_wep_ak 					= ["AKS74U_DZ","AKS74U_Kobra_DZ","AKS74U_SD_DZ","AKS74U_Kobra_SD_DZ","AKM_DZ","AKM_Kobra_DZ","AKM_PSO1_DZ","AK74_DZ","AK74_Kobra_DZ","AK74_PSO1_DZ","AK74_GL_DZ","AK74_SD_DZ","AK74_Kobra_SD_DZ","AK74_PSO1_SD_DZ","AK74_GL_SD_DZ","AK74_GL_Kobra_DZ","AK74_GL_PSO1_DZ","AK74_GL_Kobra_SD_DZ","AK74_GL_PSO1_SD_DZ"];
		ai_wep_machine 				= ["M249_m145_EP1_DZE","M8_SAW","m240_scoped_EP1_DZE","M60A4_EP1_DZE","MG36_camo","MG36","BAF_L86A2_ACOG","L110A1_DZ","L110A1_CCO_DZ","L110A1_Holo_DZ","M249_DZ","M249_CCO_DZ","M249_Holo_DZ","M240_DZ","M240_CCO_DZ","M240_Holo_DZ","Mk48_DZ","Mk48_CCO_DZ","Mk48_Holo_DZ","RPK_DZ","RPK_Kobra_DZ","RPK_PSO1_DZ","RPK74_DZ","RPK74_Kobra_DZ","RPK74_PSO1_DZ","UK59_DZ","PKM_DZ","Pecheneg_DZ"];
		ai_wep_pistol				= ["M9_DZ","M9_SD_DZ","G17_DZ","G17_FL_DZ","G17_MFL_DZ","G17_SD_DZ","G17_SD_FL_DZ","G17_SD_MFL_DZ","Makarov_DZ","Makarov_SD_DZ","Revolver_DZ","revolver_gold_EP1","M1911_DZ","Sa61_EP1","PDW_DZ","UZI_SD_EP1"];
		ai_wep_sniper 				= ["Mosin_PU_DZ","m8_sharpshooter","M4SPR","M14_DZ","M14_Gh_DZ","M14_CCO_DZ","M14_Holo_DZ","M14_CCO_Gh_DZ","M14_Holo_Gh_DZ","CZ550_DZ","M24_DZ","M24_Gh_DZ","M24_des_EP1","M40A3_DZ","M40A3_Gh_DZ","SVD_DZ","SVD_Gh_DZ","SVD_PSO1_DZ","SVD_PSO1_Gh_DZ","SVD_des_EP1","FNFAL_DZ","FNFAL_CCO_DZ","FNFAL_Holo_DZ","FN_FAL_ANPVS4_DZE","SCAR_H_LNG_Sniper","SCAR_H_LNG_Sniper_SD","M110_NVG_EP1","DMR_DZ","DMR_Gh_DZ","BAF_LRR_scoped","BAF_LRR_scoped_W","VSS_Vintorez"];
		
		/* Random Weapons */		/* By default, most of the mission crates and ai spawn weapons out of the group below. You can remove any weapon array entries from the list if you don't wish to include them. */
		if (WAI_Overpoch) then {
		ai_wep_random				= [ai_wep_g36,ai_wep_m16,ai_wep_m4,ai_wep_sa58,ai_wep_l85,ai_wep_ak,ai_wep_sniper,ai_wep_machine,ai_wep_owacr,ai_wep_owak,ai_wep_owspare,ai_wep_owacrsd,ai_wep_owscar,ai_wep_owsmg,ai_wep_owsniper,ai_wep_owtar,ai_wep_owg3,ai_wep_owmas,ai_wep_owlmg,ai_wep_owhk417,ai_wep_owhk416,ai_wep_owg36,ai_wep_owdmr];
		} else {
		ai_wep_random				= [ai_wep_g36,ai_wep_m16,ai_wep_m4,ai_wep_scar,ai_wep_sa58,ai_wep_l85,ai_wep_ak,ai_wep_machine,ai_wep_sniper];
		};
		
		ai_wep_launchers_AT			= ["M136","RPG18","SMAW"];
		ai_wep_launchers_AA			= ["Strela","Igla","STINGER"];
		
		ai_packs					= ["DZ_Czech_Vest_Pouch","DZ_ALICE_Pack_EP1","DZ_TK_Assault_Pack_EP1","DZ_British_ACU","DZ_GunBag_EP1","DZ_CivilBackpack_EP1","DZ_Backpack_EP1","DZ_LargeGunBag_EP1"];
		ai_hero_skin				= ["UN_CDF_Soldier_AT_EP1","UN_CDF_Soldier_MG_EP1","UN_CDF_Soldier_EP1","UN_CDF_Soldier_AAT_EP1","UN_CDF_Soldier_AMG_EP1","UN_CDF_Soldier_B_EP1","UN_CDF_Soldier_Crew_EP1","UN_CDF_Soldier_Guard_EP1","UN_CDF_Soldier_Light_EP1","UN_CDF_Soldier_Officer_EP1","UN_CDF_Soldier_Pilot_EP1","UN_CDF_Soldier_Guard_EP1_DZ","UN_CDF_Soldier_SL_EP1"];
		ai_bandit_skin				= ["INS_Commander","INS_Soldier_1","INS_Soldier_AA","INS_Soldier_AT","INS_Soldier_Crew","INS_Soldier_Medic","INS_Soldier_Sapper","INS_Soldier_2","INS_Soldier_CO","INS_Soldier_GL","INS_Soldier_MG","INS_Soldier_Sab","INS_Soldier_Sniper","INS_Soldier_Pilot","Ins_Soldier_2_DZ","INS_Lopotev","INS_Bardak"];
		ai_special_skin				= ["Hooker1"];
		ai_all_skin					= [ai_hero_skin,ai_bandit_skin,ai_special_skin];

		ai_add_skin					= true;			// adds unit skin to inventory on death
		
		/* AI Cache Units */
		ai_cache_units			= false;
		/**Range for Re-Activation*************/
		/****** Default: 800 ******************/
		ai_cache_units_reactivation_range = 800;
		/**Time untill units are Frozen again**/
		/************* Default: 30 ************/
		ai_cache_units_refreeze = 30;
		/****** Log Actions to RPT File? ******/
		/*********** Default: true ************/
		ai_cache_units_freeze_log = true;
		/******** Unassign Waypoints?  ********/
		/*********** Default: false ***********/
		ai_cache_units_unassign_waypoints = false;
		/******** Randomize Position?  ********/
		/******** Distance to Randomize *******/
		/*********** Default: true ************/
		/*********** Distance: 20 *************/
		ai_cache_units_randomize_position = true;
		ai_cache_units_randomize_distance = 20;
		/********** Hide un-used AI?  *********/
		/*********** Default: true ************/
		ai_cache_unites_hide_ai = true;
		/* AI Cache Units End */
		
	/* END AI CONFIG */

	/* WAI MISSIONS CONFIG */
		wai_mission_system			= true;	// use built in mission system

		wai_mission_markers			= ["DZMSMajMarker","DZMSMinMarker","DZMSBMajMarker","DZMSBMinMarker"];
		wai_avoid_missions			= 500;								// avoid spawning missions this close to other missions, these are defined in wai_mission_markers
		wai_avoid_traders			= 750;								// avoid spawning missions this close to traders
		wai_avoid_town				= 0;								// avoid spawning missions this close to towns, *** doesn't function with infiSTAR enabled ***
		wai_avoid_road				= 0;								// avoid spawning missions this close to roads
		wai_avoid_water				= 50;								// avoid spawning missions this close to water
		wai_avoid_players 			= 500;								// avoid spawning missions this close to a player

		
		wai_mission_timer			= [300,900];							// time between missions 5-15 minutes
		wai_mission_timeout			= [900,1800]; 						// time each missions takes to despawn if inactive 15-30 minutes
		wai_timeout_distance		= 1000;								// if a player is this close to a mission then it won't time-out
		
		wai_clean_mission			= true;								// clean all mission buildings after a certain period
		wai_clean_mission_time		= 1800;								// time after a mission is complete to clean mission buildings

		wai_mission_fuel			= [5,60];							// fuel inside mission spawned vehicles [min%,max%]
		wai_vehicle_damage			= [20,70];							// damages to spawn vehicles with [min%,max%]
		wai_keep_vehicles			= true;								// save vehicles to database and keep them after restart
		wai_linux_server			= false;							// false = Windows (HiveExt.dll)		true = Linux Server (writer.pl)		has no effect when "wai_keep_vehicles = false;"

		wai_mission_vehicles		= "KeyinCrate";					// Options: "KeyonAI", "KeyinVehicle", "KeyinCrate", "NoVehicleKey".

		wai_crates_smoke			= true;								// pop smoke on crate when mission is finished during daytime
		wai_crates_flares			= true;								// pop flare on crate when mission is finished during nighttime
		
		wai_players_online			= 1; 								// number of players online before mission starts
		wai_server_fps				= 5; 								// missions only starts if server FPS is over wai_server_fps
		
		wai_kill_percent			= 90;								// percentage of AI players that must be killed at "crate" missions to be able to trigger completion

		wai_high_value				= true;								// enable the possibility of finding a high value item (defined below crate_items_high_value) inside a crate
		wai_high_value_chance		= 1;								// chance in percent you find above mentioned item

		wai_enable_minefield		= true;								// enable minefields to better defend missions
		wai_use_launchers			= true;								// add a rocket launcher to each spawned AI group
		wai_remove_launcher			= false;								// remove rocket launcher from AI on death

		// Missions
		wai_mission_announce		= "DynamicText";					// Options: "Radio", "DynamicText", "titleText".
		wai_hero_limit				= 4;								// define how many hero missions can run at once
		wai_bandit_limit			= 0;								// define how many bandit missions can run at once

		wai_hero_missions			= [ 								// ["mission filename",% chance of picking this mission],Make sure the chances add up to 100,or it will not be accurate percentages
										//["patrol",40],
										["black_hawk_crash",40],
										["armed_vehicle",50],
										["bandit_base",50],
										["captured_mv22",50],
										["broken_down_ural",40],
										["hero_base",50],
										["ikea_convoy",50],
										["medi_camp",40],
										["destroyed_ural",40],
										["disabled_milchopper",50],
										["mayors_mansion",50],
										["presidents_mansion",50],
										["weapon_cache",40],
										["bandit_patrol",40],
										["gem_tower",40],
										["cannibal_cave",50],
										["crop_raider",40],
										["drone_pilot",40], 
										["slaughter_house",40],
										["drugbust",40],
										["armybase",40],
										["abandoned_trader",40],
										["lumberjack",40],
										["tankcolumn",40],
										["macdonald",40],
										["radioshack",40],
										["junkyard",40]
										
							];
		wai_bandit_missions			= [
										["patrol",4],
										["armed_vehicle",4],
										["black_hawk_crash",4],
										["captured_mv22",4],
										["broken_down_ural",4],
										["hero_base",5],
										["ikea_convoy",5],
										["medi_camp",4],
										["presidents_mansion",5],
										["sniper_extraction",4],
										["weapon_cache",4],
										["gem_tower",4],
										["cannibal_cave",5],
										["crop_raider",4],
										["drone_pilot",4], 
										["slaughter_house",4],
										["drugbust",4],
										["armybase",4],
										["abandoned_trader",4],
										["lumberjack",4],
										["tankcolumn",4],
										["macdonald",4],
										["radioshack",4],
										["junkyard",4]
							];
		
		// Vehicle arrays
		armed_vehicle 				= ["PRACS_LAV_IFV","PRACS_LAV_MGS","PRACS_M113_SA_Mk19","PRACS_RB_BRDM2_D","PRACS_M109_M","PRACS_M113_FSV","PRACS_HMMWV_M","PRACS_LAV25_M","PRACS_HMMWV_TOW","PRACS_HMMWV_MK19"];
		armed_chopper 				= ["PRACS_puma330_Marine","PRACS_CH46","PRACS_puma330_MG","PRACS_RAH6","PRACS_UH1H","PRACS_CH53","PRACS_Mohawk"];
		civil_chopper 				= ["PRACS_AB212_CAS_MAT","GNTKa27","PRACS_AH6J","PRACS_puma330_MED","PRACS_MH6J","PRACS_puma330_Marine_MED"];
		military_unarmed 			= ["PRACS_Pinzgauer","PRACS_Pinz_AA","PRACS_Pinz_6x6","PRACS_Pinzgauer_patrol","PRACS_Pinzgauer_SFOD","PRACS_HMMWV","PRACS_M113_AMB_UN"];
		cargo_trucks 				= ["PRACS_M250","PRACS_M250_open","Kamaz_DZE","MTVR_DES_EP1","Ural_CDF","Ural_TK_CIV_EP1","Ural_UN_EP1","PRACS_M250_Supply","PRACS_M250_Salvage"];
		refuel_trucks				= ["PRACS_M250_fuel","KamazRefuel_DZ","MtvrRefuel_DES_EP1_DZ","UralRefuel_TK_EP1_DZ","V3S_Refuel_TK_GUE_EP1_DZ"];
		civil_vehicles 				= ["PRACS_M250_Repair","PRACS_M250_Ammo","SUV_Blue","SUV_Camo","SUV_Charcoal","SUV_Green","SUV_Orange","SUV_Pink","SUV_Red","SUV_Silver","SUV_TK_CIV_EP1","SUV_White","SUV_Yellow"];

		// Dynamic box array
		crates_large				= ["USVehicleBox","RUVehicleBox","TKVehicleBox_EP1"];
		crates_medium				= ["USBasicWeaponsBox","RUBasicWeaponsBox","USSpecialWeaponsBox","USSpecialWeapons_EP1","RUSpecialWeaponsBox","SpecialWeaponsBox","TKSpecialWeapons_EP1","UNBasicWeapons_EP1"];
		crates_small				= ["GuerillaCacheBox","RULaunchersBox","RUBasicAmmunitionBox","RUOrdnanceBox","USBasicAmmunitionBox","USLaunchersBox","USOrdnanceBox","USOrdnanceBox_EP1","USLaunchers_EP1","USBasicWeapons_EP1","USBasicAmmunitionBox_EP1","UNBasicAmmunitionBox_EP1","TKOrdnanceBox_EP1","TKLaunchers_EP1","TKBasicAmmunitionBox_EP1","GuerillaCacheBox_EP1","GERBasicWeapons_EP1"];

		crate_weapons_buildables	= ["ChainSaw","ChainSawB","ChainSawG","ChainSawP","ChainSawR"];
		
		crate_tools					= ["ItemKeyKit","Binocular","Binocular_Vector","ItemCompass","ItemCrowbar","ItemEtool","ItemFishingPole","ItemFlashlightRed","ItemGPS","ItemHatchet","ItemKnife","ItemMachete","ItemMatchbox","ItemToolbox","NVGoggles"];
		crate_tools_buildable		= ["ItemToolbox","ItemEtool","ItemCrowbar","ItemKnife"];
		crate_tools_sniper			= ["ItemCompass","Binocular","Binocular_Vector","NVGoggles","ItemGPS"];

		crate_items					= ["FoodNutmix","FoodPistachio","FoodMRE","ItemSodaOrangeSherbet","ItemSodaRbull","ItemSodaR4z0r","ItemSodaMdew","ItemSodaPepsi","ItemBandage","ItemSodaCoke","FoodbaconCooked","FoodCanBakedBeans","FoodCanFrankBeans","FoodCanPasta","FoodCanSardines","FoodchickenCooked","FoodmuttonCooked","FoodrabbitCooked","FishCookedTrout","FishCookedTuna","FishCookedSeaBass","ItemAntibiotic","ItemBloodbag","ItemEpinephrine","ItemHeatPack","ItemMorphine","ItemGoldBar","ItemGoldBar10oz","CinderBlocks","ItemCanvas","ItemComboLock","ItemLightBulb","ItemLockbox","ItemSandbag","ItemTankTrap","ItemWire","MortarBucket","PartEngine","PartFueltank","PartGeneric","PartGlass","PartPlankPack","PartVRotor","PartWheel","PartWoodPile"];
		crate_items_high_value		= ["ItemBriefcase100oz","ItemVault","plot_pole_kit","ItemHotwireKit"];
		crate_items_food			= ["ItemWaterbottle","FoodNutmix","FoodPistachio","FoodMRE","ItemSodaOrangeSherbet","ItemSodaRbull","ItemSodaR4z0r","ItemSodaMdew","ItemSodaPepsi","ItemSodaCoke","FoodbaconCooked","FoodCanBakedBeans","FoodCanFrankBeans","FoodCanPasta","FoodCanSardines","FoodchickenCooked","FoodmuttonCooked","FoodrabbitCooked","FishCookedTrout","FishCookedTuna","FishCookedSeaBass"];
		crate_items_buildables		= ["forest_large_net_kit","cinder_garage_kit",["PartPlywoodPack",5],"ItemSandbagExLarge5X","park_bench_kit","ItemComboLock",["CinderBlocks",10],"ItemCanvas","ItemComboLock",["ItemLightBulb",5],"ItemLockbox",["ItemSandbag",10],["ItemTankTrap",10],["ItemWire",10],["MortarBucket",10],["PartPlankPack",5],"PartWoodPile"];
		crate_items_vehicle_repair	= ["PartEngine","PartFueltank","PartGeneric","PartGlass","PartVRotor","PartWheel"];
		crate_items_medical			= ["ItemWaterbottle","ItemAntibiotic","ItemBloodbag","ItemEpinephrine","ItemHeatPack","ItemMorphine","ItemBandage","FoodCanFrankBeans","FoodCanPasta"];
		crate_items_chainbullets	= ["2000Rnd_762x51_M134","200Rnd_762x51_M240","100Rnd_127x99_M2","150Rnd_127x107_DSHKM"];
		crate_items_sniper			= [["ItemPainkiller",5],"Skin_Sniper1_DZ","Skin_CZ_Soldier_Sniper_EP1_DZ","Skin_GUE_Soldier_Sniper_DZ"];
		crate_items_president		= ["ItemDocument","ItemGoldBar10oz"];
		crate_items_gems			= ["ItemRuby","ItemCitrine","ItemEmerald","ItemAmethyst","ItemSapphire","ItemObsidian","ItemTopaz"];
		crate_items_crop_raider		= ["ItemKiloHemp"];
		crate_items_wood			= [["ItemWoodFloorQuarter",5],["ItemWoodStairs",2],["ItemWoodLadder",2],["ItemWoodWallThird",5],"ItemWoodWallGarageDoor",["ItemWoodWallLg",3],"ItemWoodWallWithDoorLg","wood_ramp_kit"];

		crate_backpacks_all			= ["DZ_Patrol_Pack_EP1","DZ_Assault_Pack_EP1","DZ_Czech_Vest_Pouch","DZ_TerminalPack_EP1","DZ_ALICE_Pack_EP1","DZ_TK_Assault_Pack_EP1","DZ_CompactPack_EP1","DZ_British_ACU","DZ_GunBag_EP1","DZ_CivilBackpack_EP1","DZ_Backpack_EP1","DZ_LargeGunBag_EP1"];
		crate_backpacks_large		= ["DZ_GunBag_EP1","DZ_Backpack_EP1","DZ_LargeGunBag_EP1","DZ_CivilBackpack_EP1"];

		crate_random				= [crate_items,crate_items_food,crate_items_buildables,crate_items_vehicle_repair,crate_items_medical,crate_items_chainbullets];

	/* END WAI MISSIONS CONFIG */

	/* STATIC MISSIONS CONFIG */

		static_missions				= false;		// use static mission file
		custom_per_world			= false;		// use a custom mission file per world

	/* END STATIC MISSIONS CONFIG */

	WAIconfigloaded = true;

};
