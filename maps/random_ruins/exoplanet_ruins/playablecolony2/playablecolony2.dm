#include "playablecolony2_radio.dm"

/datum/map_template/ruin/exoplanet/playablecolony2
	name = "Landed Colony Ship"
	id = "playablecolony2"
	description = "a recently landed colony ship"
	suffixes = list("playablecolony2/colony2.dmm")
	cost = 2
	template_flags = TEMPLATE_FLAG_CLEAR_CONTENTS | TEMPLATE_FLAG_NO_RUINS | TEMPLATE_FLAG_NO_RADS
	ruin_tags = RUIN_HUMAN|RUIN_HABITAT
	ban_ruins = list(/datum/map_template/ruin/exoplanet/playablecolony)
	apc_test_exempt_areas = list(
		/area/map_template/colony2/external = NO_SCRUBBER|NO_VENT
	)
	spawn_weight = 0.3

/decl/submap_archetype/playablecolony2
	descriptor = "landed colony ship"
	crew_jobs = list(/datum/job/submap/colonist2)

/datum/job/submap/colonist2
	title = "Ship Colonist"
	supervisors = "the trust of your fellow Colonists"
	info = "You are a Colonist, living on the rim of explored, let alone inhabited, space in a recently landed colony ship."
	alt_titles = list(
		"Ship Colony Engineer",
		"Ship Colony Doctor")
	total_positions = 4
	outfit_type = /decl/hierarchy/outfit/job/colonist2
	min_skill = list(	SKILL_BUREAUCRACY   = SKILL_EXPERT,
						SKILL_FINANCE       = SKILL_EXPERT,
						SKILL_EVA           = SKILL_EXPERT,
						SKILL_MECH          = SKILL_EXPERT,
						SKILL_PILOT         = SKILL_EXPERT,
						SKILL_HAULING       = SKILL_NONE,
						SKILL_COMPUTER      = SKILL_PROF,
						SKILL_BOTANY        = SKILL_EXPERT,
						SKILL_COOKING       = SKILL_EXPERT,
						SKILL_COMBAT        = SKILL_PROF,
						SKILL_WEAPONS       = SKILL_EXPERT,
						SKILL_FORENSICS     = SKILL_EXPERT,
						SKILL_CONSTRUCTION  = SKILL_EXPERT,
						SKILL_ELECTRICAL    = SKILL_EXPERT,
						SKILL_ATMOS         = SKILL_EXPERT,
						SKILL_ENGINES       = SKILL_EXPERT,
						SKILL_DEVICES       = SKILL_EXPERT,
						SKILL_SCIENCE       = SKILL_EXPERT,
						SKILL_MEDICAL       = SKILL_EXPERT,
						SKILL_ANATOMY       = SKILL_EXPERT,
						SKILL_CHEMISTRY     = SKILL_EXPERT)
	skill_points = 20
	
/decl/hierarchy/outfit/job/colonist2
	name = OUTFIT_JOB_NAME("Colonist2")
	id_types = list()
	pda_type = null
	l_ear = /obj/item/device/radio/headset/map_preset/playablecolony2

/obj/effect/submap_landmark/spawnpoint/colonist_spawn2
	name = "Colonist"

/obj/effect/submap_landmark/joinable_submap/colony2
	name = "Landed Colony Ship"
	archetype = /decl/submap_archetype/playablecolony

// Areas //
/area/map_template/colony2
	icon = 'maps/random_ruins/exoplanet_ruins/playablecolony2/colony2.dmi'

/area/map_template/colony2/Hallway
	name = "\improper Colony Hallway"
	icon_state = "halls"

/area/map_template/colony2/engineering
	name = "\improper Colony Engineering"
	icon_state = "processing"

/area/map_template/colony2/atmospherics
	name = "\improper Colony Atmospherics"
	icon_state = "shipping"

/area/map_template/colony2/commons
	name = "\improper Colony Common Area"
	icon_state = "A"

/area/map_template/colony2/storage
	name = "\improper Colony Storage"
	icon_state = "B"

/area/map_template/colony2/external
	name = "\improper Colony External Infrastructure"
	icon_state = "A"

/area/map_template/colony2/ship
	name = "\improper ICV Halifax Proffer"
	icon_state = "B"

/area/map_template/colony2/tcomms
	name = "\improper Colony Telecommunications"
	icon_state = "B2"
