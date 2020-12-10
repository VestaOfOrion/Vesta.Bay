#include "objects/signs.dm"

/datum/map_template/ruin/antag_spawn/heist
	name = "Pirate Ship"
	suffixes = list("heist/heist_base.dmm")
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/skipjack)

/obj/effect/overmap/visitable/ship/pirate_ship
	name = "SDV Gentle Rammer"
	color = "#46783d"
	vessel_mass = 30000
	max_speed = 1/(10 SECONDS)
	burn_delay = 4 SECONDS
	fore_dir = NORTH
	desc = "Sensor array detects a medium SCG gunship with minor structural damage."
	in_space = 1
	icon_state = "ship"
	moving_state = "ship_moving"
	hide_from_reports = TRUE
	initial_generic_waypoints = list(
		"nav_pirate_1",
		"nav_pirate_2",
		"nav_pirate_3",
		"nav_pirate_4"
	)

/obj/effect/overmap/visitable/ship/landable/skipjack
	name = "Hades"
	desc = "Sensors detect a small shuttlecraft registered to the Sol Cental Government."
	shuttle = "Hades"
	fore_dir = SOUTH
	vessel_size = SHIP_SIZE_SMALL
	vessel_mass = 2000

/datum/shuttle/autodock/overmap/skipjack
	name = "Hades"
	move_time = 90
	shuttle_area = list(/area/map_template/pirate_ship/skipjack_shuttle)
	dock_target = "skipjack_shuttle"
	current_location = "nav_skipjack_start"
	landmark_transition = "nav_skipjack_transition"
	sound_takeoff = 'sound/effects/rocket.ogg'
	sound_landing = 'sound/effects/rocket_backwards.ogg'
	defer_initialisation = TRUE
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/skipjack
	warmup_time = 5
	range = 1
	fuel_consumption = 5
	skill_needed = SKILL_BASIC

/turf/simulated/floor/shuttle_ceiling/skipjack
	color = COLOR_BLUE

/obj/effect/shuttle_landmark/skipjack/start
	name = "Hades Dock"
	landmark_tag = "nav_skipjack_start"
	docking_controller = "skipjack_base"

/obj/effect/shuttle_landmark/skipjack/internim
	name = "In transit"
	landmark_tag = "nav_skipjack_transition"

/obj/effect/shuttle_landmark/skipjack/dock
	name = "Docking Port"
	landmark_tag = "nav_skipjack_dock"
	docking_controller = "skipjack_shuttle_dock_airlock"

//Areas
/area/map_template/pirate_ship
	name = "SDV Gentle Rammer"
	icon_state = "yellow"
	req_access = list(access_syndicate)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/map_template/pirate_ship/dormitories
	name = "Dormitories"
	icon_state = "purple"

/area/map_template/pirate_ship/bridge
	name = "Bridge"
	icon_state = "bridge"

/area/map_template/pirate_ship/engineering
	name = "engineering"
	icon_state = "engine"
	
/area/map_template/pirate_ship/hallway
	name = "hallways"
	icon_state = "sub_maint_aft"

/area/map_template/pirate_ship/skipjack_shuttle
	name = "\improper Hades"
	icon_state = "yellow"
	req_access = list(access_syndicate)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

// The following mirror is ~special~.
/obj/item/weapon/storage/mirror/raider
	name = "cracked mirror"
	desc = "Something seems strange about this old, dirty mirror. Your reflection doesn't look like you remember it."
	icon_state = "mirror_broke"
	shattered = 1

/obj/item/weapon/storage/mirror/raider/use_mirror(mob/living/carbon/human/user)
	if(istype(get_area(src),/area/map_template/pirate_ship/dormitories))
		if(istype(user) && user.mind && user.mind.special_role == "Raider" && user.species.name != SPECIES_VOX && is_alien_whitelisted(user, SPECIES_VOX))
			var/choice = input("Do you wish to become a true Vox of the Shoal? This is not reversible.") as null|anything in list("No","Yes")
			if(choice && choice == "Yes")
				var/mob/living/carbon/human/vox/vox = new(get_turf(src),SPECIES_VOX)
				GLOB.raiders.equip(vox)
				if(user.mind)
					user.mind.transfer_to(vox)
				spawn(1)
					var/newname = sanitizeSafe(input(vox,"Enter a name, or leave blank for the default name.", "Name change","") as text, MAX_NAME_LEN)
					if(!newname || newname == "")
						var/decl/cultural_info/voxculture = SSculture.get_culture(CULTURE_VOX_RAIDER)
						newname = voxculture.get_random_name()
					vox.real_name = newname
					vox.SetName(vox.real_name)
					GLOB.raiders.update_access(vox)
				qdel(user)