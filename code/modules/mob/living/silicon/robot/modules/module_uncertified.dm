/obj/item/weapon/robot_module/uncertified
	name = "uncertified robot module"
	sprites = list(
		"Roller" = "omoikane"
	)
	upgrade_locked = TRUE
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
	) // For the money launcher, of course

/obj/item/weapon/robot_module/uncertified/party
	name = "Madhouse Productions Official Party Module"
	display_name = "Party"
	channels = list(
		"Service" = TRUE,
		"Entertainment" = TRUE
	)
	networks = list(
		NETWORK_THUNDER
	)
	equipment = list(
		/obj/item/device/boombox,
		/obj/item/weapon/bikehorn/airhorn,
		/obj/item/weapon/party_light,
		/obj/item/weapon/gun/launcher/money
	)

/obj/item/weapon/robot_module/uncertified/party/finalize_equipment()
	. = ..()
	var/obj/item/weapon/gun/launcher/money/MC = new (src)
	MC.receptacle_value = 5000
	MC.dispensing = 100
