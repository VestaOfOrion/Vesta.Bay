/obj/item/weapon/robot_module/research
	name = "research module"
	display_name = "Research"
	channels = list(
		"Science" = TRUE
	)
	networks = list(
		NETWORK_RESEARCH
	)
	sprites = list(
		"Droid" = "droid-science"
	)
	equipment = list(
		/obj/item/device/flash,
		/obj/item/weapon/portable_destructive_analyzer,
		/obj/item/weapon/gripper/research,
		/obj/item/weapon/gripper/no_use/loader,
		/obj/item/device/robotanalyzer,
		/obj/item/weapon/card/robot,
		/obj/item/weapon/wrench,
		/obj/item/weapon/screwdriver,
		/obj/item/weapon/weldingtool/mini,
		/obj/item/weapon/wirecutters,
		/obj/item/weapon/crowbar,
		/obj/item/weapon/scalpel/laser3,
		/obj/item/weapon/circular_saw,
		/obj/item/weapon/extinguisher/mini,
		/obj/item/weapon/reagent_containers/syringe,
		/obj/item/weapon/gripper/chemistry,
		/obj/item/stack/nanopaste
	)
	synths = list(
		/datum/matter_synth/nanite = 10000
	)
	emag = /obj/prefab/hand_teleporter
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
/obj/item/weapon/robot_module/research/finalize_equipment()
	. = ..()
	var/obj/item/stack/nanopaste/N = locate() in equipment
	N.uses_charge = 1
	N.charge_costs = list(1000)

/obj/item/weapon/robot_module/research/finalize_synths()
	. = ..()
	var/datum/matter_synth/nanite/nanite = locate() in synths
	var/obj/item/stack/nanopaste/N = locate() in equipment
	N.synths = list(nanite)
