/obj/machinery/computer/shuttle_control/explore/bearcat_shuttle
	name = "Cargo shuttle control console"
	shuttle_tag = "Cargo shuttle"

/datum/shuttle/autodock/overmap/bearcat_shuttle
	name = "Cargo shuttle"
	move_time = 50
	shuttle_area = list(/area/ship/scrap/bearcat_shuttle)
	dock_target = "bearcat_shuttle"
	current_location = "nav_bearcat_dock"
	landmark_transition = "nav_bearcat_transit"
	range = 1
	fuel_consumption = 4
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/
	skill_needed = SKILL_BASIC
	defer_initialisation = TRUE

/obj/effect/overmap/visitable/ship/landable/bearcat_shuttle
	name = "Cargo shuttle"
	shuttle = "Cargo shuttle"
	fore_dir = NORTH
	vessel_size = SHIP_SIZE_SMALL

/obj/effect/shuttle_landmark/bearcat/bearcat_shuttle
	name = "Cargo Ship Dock"
	landmark_tag = "nav_bearcat_dock"
	base_area = /area/space
	base_turf = /turf/simulated/floor/shuttle/black

/obj/effect/shuttle_landmark/transit/bearcat/bearcat_shuttle
	name = "In transit"
	landmark_tag = "nav_bearcat_transit"