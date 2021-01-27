/obj/item/weapon/robot_module/security
	channels = list(
		"Security" = TRUE
	)
	networks = list(
		NETWORK_SECURITY
	)
	subsystems = list(
		/datum/nano_module/crew_monitor, 
		/datum/nano_module/program/digitalwarrant
	)
	can_be_pushed = FALSE
	supported_upgrades = list(
		/obj/item/borg/upgrade/weaponcooler
	)
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

/obj/item/weapon/robot_module/security/respawn_consumable(var/mob/living/silicon/robot/R, var/amount)
	..()
	for(var/obj/item/weapon/gun/energy/T in equipment)
		if(T && T.power_supply)
			if(T.power_supply.charge < T.power_supply.maxcharge)
				T.power_supply.give(T.charge_cost * amount)
				T.update_icon()
			else
				T.charge_tick = 0
	var/obj/item/weapon/melee/baton/robot/B = locate() in equipment
	if(B && B.bcell)
		B.bcell.give(amount)

/obj/item/weapon/robot_module/security/general
	name = "security robot module"
	display_name = "Security"
	crisis_locked = TRUE
	sprites = list(
		"Basic" = "secborg",
		"Red Knight" = "Security",
		"Black Knight" = "securityrobot",
		"Bloodhound" = "bloodhound",
		"Bloodhound - Treaded" = "secborg+tread",
		"Tridroid" = "orb-security"
	)
	equipment = list(
		/obj/item/device/flash,
		/obj/item/borg/sight/hud/sec,
		/obj/item/weapon/handcuffs/cyborg,
		/obj/item/weapon/melee/baton/robot,
		/obj/item/weapon/gun/energy/gun/secure/mounted,
		/obj/item/taperoll/police,
		/obj/item/device/megaphone,
		/obj/item/device/holowarrant,
		/obj/item/weapon/crowbar,
		/obj/item/device/hailer
	)
	emag = /obj/item/weapon/gun/energy/laser/mounted

/obj/item/weapon/robot_module/security/combat
	name = "combat robot module"
	display_name = "Combat"
	crisis_locked = TRUE
	hide_on_manifest = TRUE
	sprites = list(
		"Combat Android" = "droid-combat"
	)
	equipment = list(
		/obj/item/device/flash,
		/obj/item/borg/sight/thermal,
		/obj/item/weapon/gun/energy/laser/mounted,
		/obj/item/weapon/gun/energy/plasmacutter,
		/obj/item/borg/combat/shield,
		/obj/item/borg/combat/mobility,
		/obj/item/weapon/crowbar
	)
	emag = /obj/item/weapon/gun/energy/lasercannon/mounted
