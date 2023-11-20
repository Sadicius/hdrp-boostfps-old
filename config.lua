Config = {}

-- https://github.com/femga/rdr3_discoveries/blob/master/graphics/timecycles/timecycles.lua
--  SET TIMECYCLE:
-- 			Citizen.InvokeNative(0xFA08722A5EA82DA7,timecycle_modifier)   	-- SET_TIMECYCLE_MODIFIER
-- 			Citizen.InvokeNative(0xFDB74C9CC54C3F37,1.0)			-- SET_TIMECYCLE_MODIFIER_STRENGTHs
--
--  REMOVE TIMECYCLE:
--			Citizen.InvokeNative(0x0E3F4AF2D63491FB) 			-- CLEAR_TIMECYCLE_MODIFIER

	Config.DeadEyetimecycles = {
		"newDeadeyeBase",
		"DeadEyeClarity",
		"DeadEyeBase",
		"DeadEyeLight",
		"DeadEyeDark",
		"DeadEyeEmpty",
	}

	Config.EagleEyetimecycles= {
		"EagleEyeClarity",
		"EagleEyeBase",
		"EagleEyeBaseBasic",
		"EagleEyeBaseBasicNight",
		"EagleEyeTest",
	}

	Config.Lightstimecycles= {
		"fill_light_int",
		"TEMPPedLightStrongTEMP",
		"van_lighthouse_int",
		"localLights_thirded",
		"CS_Gradient_type_bottom_light",
		"CS_Gradient_type_top_light",
		"CS_Gradient_type_top_bottom_light",
		"NoPedLight",
		"but_creek_lighting_opt",
		"native3_ext_tent_light",
		"brt_ext_reducelightrange",
		"noDirectLight",
		"lightOpt_n07_app_e",
		"lightOpt_o13_R_junction",
		"lightOpt_i14_H_junction",
		"lightning",
		"lightning_weak",
		"lightning_strong",
		"lightning_cloud",
		"INT_streetlighting",
		"StreetLighting",
		"StreetLightingtraffic",
		"StreetLightingJunction",
		"int_extlight_large",
		"ext_int_extlight_large",
		"int_extlight_small",
		"int_extlight_small_clipped",
		"int_extlight_large_fog",
		"int_extlight_small_fog",
		"int_extlight_none",
		"int_extlight_none_dark",
		"int_extlight_none_dark_fog",
		"int_extlight_none_fog",
		"int_clean_extlight_large",
		"int_clean_extlight_small",
		"int_clean_extlight_none",
		"PennedInLight",
		"KillCamLight",
		"RespawnLight",
		"TimelapseVOLight",
		"PlayerSpottedLight",
	}
