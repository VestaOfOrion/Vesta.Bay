/obj/item/weapon/robot_module/miner
	name = "miner robot module"
	display_name = "Miner"
	subsystems = list(
		/datum/nano_module/supply
	)
	channels = list(
		"Supply" = TRUE,
		"Science" = TRUE
	)
	networks = list(
		NETWORK_MINE
	)
	sprites = list(
		"Basic" = "Miner_old",
		"Advanced Droid" = "droid-miner",
		"Treadhead" = "Miner"
	)
	supported_upgrades = list(
		/obj/item/borg/upgrade/jetpack
	)
	equipment = list(
		/obj/item/device/flash,
		/obj/item/borg/sight/meson,
		/obj/item/weapon/wrench,
		/obj/item/weapon/screwdriver,
		/obj/item/weapon/storage/ore,
		/obj/item/weapon/pickaxe/borgdrill,
		/obj/item/weapon/storage/sheetsnatcher/borg,
		/obj/item/weapon/gripper/miner,
		/obj/item/device/scanner/mining,
		/obj/item/weapon/crowbar
	)
	emag = /obj/item/weapon/gun/energy/plasmacutter
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
	no_slip = 1
	
/obj/item/weapon/robot_module/miner/handle_emagged()
	var/obj/item/weapon/pickaxe/D = locate(/obj/item/weapon/pickaxe/borgdrill) in equipment
	if(D)
		equipment -= D
		qdel(D)
	D = new /obj/item/weapon/pickaxe/diamonddrill(src)
	D.canremove = FALSE
	equipment += D
