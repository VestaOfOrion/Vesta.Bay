/obj/item/weapon/robot_module/flying/cultivator
	name = "cultivator drone module"
	display_name = "Cultivator"
	channels = list(
		"Science" = TRUE,
		"Service" = TRUE
	)
	sprites = list("Drone" = "drone-hydro")

	equipment = list(
		/obj/item/weapon/storage/plants,
		/obj/item/weapon/wirecutters/clippers,
		/obj/item/weapon/material/minihoe/unbreakable,
		/obj/item/weapon/material/hatchet/unbreakable,
		/obj/item/weapon/reagent_containers/glass/bucket,
		/obj/item/weapon/scalpel/laser1,
		/obj/item/weapon/circular_saw,
		/obj/item/weapon/extinguisher,
		/obj/item/weapon/gripper/cultivator,
		/obj/item/device/scanner/plant,
		/obj/item/weapon/robot_harvester
	)
	emag = /obj/item/weapon/melee/energy/machete
	skills = list(
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