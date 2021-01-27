/datum/job/submap/scavver_pilot
	title = "Salvage Pilot"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/scavver/pilot
	supervisors = "The trust of your fellow crew."
	info = "You are the pilot of your meagre Scavenger Crew. Keep your crew safe, and seek supplies for your rig. \
	Your weapons are limited; trade, salvage, but avoid conflict as a matter of course."
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_IPC,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_VATGROWN,SPECIES_BOOSTER,SPECIES_TRITONIAN,SPECIES_MULE)
	is_semi_antagonist = TRUE
	min_skill = list(
		SKILL_BUREAUCRACY   = SKILL_EXPERT,
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
		SKILL_CHEMISTRY     = SKILL_EXPERT
	)

	max_skill = list(
		SKILL_BUREAUCRACY   = SKILL_EXPERT,
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
		SKILL_CHEMISTRY     = SKILL_EXPERT
	)
	skill_points = 20

/datum/job/submap/scavver_doctor
	title = "Salvage Doctor"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/scavver/doctor
	supervisors = "The trust of those you heal."
	info = "You are the doctor aboard your meagre Salvage team. Keep everyone alive. Your weapons are limited; trade, salvage, but avoid conflict as a matter of course."
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_IPC,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_VATGROWN,SPECIES_BOOSTER,SPECIES_TRITONIAN,SPECIES_MULE)
	is_semi_antagonist = TRUE
	min_skill = list(
		SKILL_BUREAUCRACY   = SKILL_EXPERT,
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
		SKILL_CHEMISTRY     = SKILL_EXPERT
	)

	max_skill = list(
		SKILL_BUREAUCRACY   = SKILL_EXPERT,
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
		SKILL_CHEMISTRY     = SKILL_EXPERT
	)
	skill_points = 20

/datum/job/submap/scavver_engineer
	title = "Salvage Engineer"
	total_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/scavver/engineer
	supervisors = "The trust of your fellow crew."
	info = "You are an Engineer aboard your meagre Salvage team. Keep your rig in functional order, upgrade what systems you can, and don't space yourself. \
	Your weapons are limited; trade, salvage, but avoid conflict as a matter of course."
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_IPC,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_VATGROWN,SPECIES_BOOSTER,SPECIES_TRITONIAN,SPECIES_MULE)
	is_semi_antagonist = TRUE
	min_skill = list(
		SKILL_BUREAUCRACY   = SKILL_EXPERT,
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
		SKILL_CHEMISTRY     = SKILL_EXPERT
	)

	max_skill = list(
		SKILL_BUREAUCRACY   = SKILL_EXPERT,
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
		SKILL_CHEMISTRY     = SKILL_EXPERT
	)
	skill_points = 20

/obj/effect/submap_landmark/spawnpoint/scavver_pilot
	name = "Salvage Pilot"

/obj/effect/submap_landmark/spawnpoint/scavver_doctor
	name = "Salvage Doctor"

/obj/effect/submap_landmark/spawnpoint/scavver_engineer
	name = "Salvage Engineer"

/decl/hierarchy/outfit/job/scavver
	name = "Salvager"
	l_ear = /obj/item/device/radio/headset/map_preset/scavver
	r_ear = null
	uniform = /obj/item/clothing/under/frontier
	r_pocket = /obj/item/device/radio/map_preset/scavver
	l_pocket = /obj/item/weapon/crowbar/prybar
	shoes = /obj/item/clothing/shoes/workboots
	gloves = /obj/item/clothing/gloves/thick
	belt = /obj/item/weapon/gun/energy/gun/small
	hierarchy_type = /decl/hierarchy/outfit/job/scavver
	id_types = null
	pda_type = null

/decl/hierarchy/outfit/job/scavver/engineer
	name = "Salvage Engineer"
	uniform = /obj/item/clothing/under/hazard
	r_pocket = /obj/item/device/radio/map_preset/scavver
	l_pocket = /obj/item/weapon/crowbar/prybar
	shoes = /obj/item/clothing/shoes/workboots
	gloves = /obj/item/clothing/gloves/thick/duty
	glasses = /obj/item/clothing/glasses/meson
	belt = null

/decl/hierarchy/outfit/job/scavver/pilot
	name = "Salvage Pilot"
	uniform = /obj/item/clothing/under/rank/dispatch
	suit = /obj/item/clothing/suit/armor/pcarrier/light
	r_pocket = /obj/item/device/radio/map_preset/scavver
	l_pocket = /obj/item/weapon/crowbar/prybar
	shoes = /obj/item/clothing/shoes/jackboots
	belt = null

/decl/hierarchy/outfit/job/scavver/doctor
	name = "Salvage Doctor"
	uniform = /obj/item/clothing/under/caretaker
	r_pocket = /obj/item/device/radio/map_preset/scavver
	l_pocket = /obj/item/weapon/crowbar/prybar
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	shoes = /obj/item/clothing/shoes/white
	gloves = /obj/item/clothing/gloves/latex
	belt = null
