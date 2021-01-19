// Submap shuttles.
//Ascent Seedship:
/datum/shuttle/autodock/overmap/ascent_seedship
	name = "Ascent Seedship"
	warmup_time = 5
	range = 1
	current_location = "nav_ascent_seedship_start"
	shuttle_area = list(
		/area/ship/ascent, /area/ship/ascent/bridge, /area/ship/ascent/gyne_quarters, /area/ship/ascent/queen_quarters,
		/area/ship/ascent/habitation, /area/ship/ascent/briefing, /area/ship/ascent/wing_port, 
		/area/ship/ascent/wing_starboard, /area/ship/ascent/infirmary, /area/ship/ascent/infirmary_hallway, 
		/area/ship/ascent/lab, /area/ship/ascent/or, /area/ship/ascent/sub_acute, /area/ship/ascent/engineering, 
		/area/ship/ascent/atmos, /area/ship/ascent/storage, /area/ship/ascent/hydroponics, /area/ship/ascent/hangar, 
		/area/ship/ascent/central_hallway, /area/ship/ascent/armory, /area/ship/ascent/xeno_cells, 
		/area/ship/ascent/laboratory_xeno, /area/ship/ascent/laboratory, /area/ship/ascent/cafeteria, 
		/area/ship/ascent/garden, /area/ship/ascent/robotics, /area/ship/ascent/mat_pros
		)
	defer_initialisation = TRUE
	knockdown = FALSE
	flags = SHUTTLE_FLAGS_PROCESS
	skill_needed = SKILL_NONE
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/ascent

/obj/effect/shuttle_landmark/ascent_main/start
	name = "Uncharted Space"
	landmark_tag = "nav_ascent_seedship_start"

//Amphiesmenoptera (A.K.A old Trichoptera) - Shuttle One, Port Side

/obj/effect/overmap/visitable/ship/landable/ascent
	name = "Amphiesmenoptera"
	shuttle = "Amphiesmenoptera"
	color = "#491749"
	moving_state = "ship_moving"
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 2000
	fore_dir = EAST
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_SMALL

/obj/machinery/computer/shuttle_control/explore/ascent
	name = "shuttle control console"
	shuttle_tag = "Amphiesmenoptera"
	icon_state = "ascent"
	icon_keyboard = "ascent_key"
	icon_screen = "ascent_screen"
	req_access = list(access_ascent)

/obj/machinery/computer/shuttle_control/explore/ascent/seedship
	name = "ascent seedship control console"
	req_access = list(access_skrellscoutship)
	shuttle_tag = "Ascent Seed"

/obj/effect/shuttle_landmark/ascent_seedship/start
	name = "Amphiesmenoptera Docked"
	landmark_tag = "nav_hangar_ascent_one"
	docking_controller = "ascent_port_dock"
	base_area = /area/ship/ascent/hangar
	base_turf = /turf/simulated/floor/ascent
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

//Add Torck Docking Port for Trichoptera
/obj/effect/shuttle_landmark/ascent_seedship/torch/trichoptera
	name = "Amphiesmenoptera Docking Port"
	landmark_tag = "nav_trichoptera_altdock"

/datum/shuttle/autodock/overmap/ascent
	name = "Amphiesmenoptera"
	warmup_time = 5
	current_location = "nav_hangar_ascent_one"
	range = 2
	dock_target = "ascent_port_shuttle_dock"
	shuttle_area = /area/ship/ascent/shuttle_starboard
	defer_initialisation = TRUE
	flags = SHUTTLE_FLAGS_PROCESS
	skill_needed = SKILL_BASIC
	mothershuttle = "Ascent Seed"
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/ascent