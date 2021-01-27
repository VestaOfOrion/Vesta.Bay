/obj/item/weapon/robot_module/flying/filing
	name = "filing drone module"
	display_name = "Filing"
	channels = list(
		"Service" = TRUE,
		"Supply" = TRUE
		)
	sprites = list("Drone" = "drone-service")
	equipment = list(
		/obj/item/device/flash,
		/obj/item/weapon/pen/robopen,
		/obj/item/weapon/form_printer,
		/obj/item/weapon/gripper/clerical,
		/obj/item/weapon/hand_labeler,
		/obj/item/weapon/stamp,
		/obj/item/weapon/stamp/denied,
		/obj/item/device/destTagger,
		/obj/item/weapon/crowbar,
		/obj/item/device/megaphone,
		/obj/item/stack/package_wrap/cyborg
	)
	emag = /obj/item/weapon/stamp/chameleon
	synths = list(/datum/matter_synth/package_wrap)
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

/obj/item/weapon/robot_module/flying/filing/finalize_synths()
	. = ..()
	var/datum/matter_synth/package_wrap =       locate() in synths
	var/obj/item/stack/package_wrap/cyborg/PW = locate() in equipment
	PW.synths = list(package_wrap)
