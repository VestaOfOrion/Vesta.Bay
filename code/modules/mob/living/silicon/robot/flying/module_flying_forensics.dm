/obj/item/weapon/robot_module/flying/forensics
	name = "forensic drone module"
	display_name = "Forensics"
	channels = list("Security" = TRUE)
	networks = list(NETWORK_SECURITY)
	subsystems = list(
		/datum/nano_module/crew_monitor,
		/datum/nano_module/program/digitalwarrant,
		/datum/nano_module/records
	)
	sprites = list(
		"Drone" = "drone-sec",
		"Eyebot" = "eyebot-security"
	)
	equipment = list(
		/obj/item/swabber,
		/obj/item/weapon/storage/evidence,
		/obj/item/weapon/forensics/sample_kit,
		/obj/item/weapon/forensics/sample_kit/powder,
		/obj/item/weapon/gripper/forensics,
		/obj/item/device/flash,
		/obj/item/borg/sight/hud/sec,
		/obj/item/taperoll/police,
		/obj/item/weapon/scalpel/laser1,
		/obj/item/weapon/autopsy_scanner,
		/obj/item/device/scanner/reagent,
		/obj/item/weapon/reagent_containers/spray/luminol,
		/obj/item/device/uv_light,
		/obj/item/weapon/crowbar
	)
	emag = /obj/item/weapon/gun/energy/laser/mounted
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

/obj/item/weapon/robot_module/flying/forensics/respawn_consumable(var/mob/living/silicon/robot/R, var/amount)
	var/obj/item/weapon/reagent_containers/spray/luminol/luminol = locate() in equipment
	if(!luminol)
		luminol = new(src)
		equipment += luminol
	if(luminol.reagents.total_volume < luminol.volume)
		var/adding = min(luminol.volume-luminol.reagents.total_volume, 2*amount)
		if(adding > 0)
			luminol.reagents.add_reagent(/datum/reagent/luminol, adding)
	..()
