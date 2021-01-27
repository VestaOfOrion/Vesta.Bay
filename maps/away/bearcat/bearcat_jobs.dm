/datum/job/submap/bearcat_captain
	title = "Independant Captain"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/bearcat/captain
	supervisors = "your bottom line"
	info = "Your ship has suffered a catastrophic amount of damage, leaving it dark and crippled in the depths of \
	unexplored space. The Captain is dead, leaving you, previously the First Mate in charge. Organize what's left of \
	your crew, and maybe you'll be able to survive long enough to be rescued."
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
	skill_points = 16

/datum/job/submap/bearcat_crewman
	title = "Independant Crewman"
	supervisors = "the Captain"
	alt_titles = list(
		"Independent Doctor",
		"Independent Engineer")
	total_positions = 5
	outfit_type = /decl/hierarchy/outfit/job/bearcat/crew
	info = "Your ship has suffered a catastrophic amount of damage, leaving it dark and crippled in the depths of \
	unexplored space. Work together with the Acting Captain and what's left of the crew, and maybe you'll be able \
	to survive long enough to be rescued."
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
	skill_points = 18

#define BEARCAT_OUTFIT_JOB_NAME(job_name) ("Bearcat - Job - " + job_name)

/decl/hierarchy/outfit/job/bearcat
	hierarchy_type = /decl/hierarchy/outfit/job/bearcat
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	r_pocket = /obj/item/device/radio/map_preset/bearcat
	l_ear = /obj/item/device/radio/headset/map_preset/bearcat
	r_ear = null

/decl/hierarchy/outfit/job/bearcat/crew
	name = BEARCAT_OUTFIT_JOB_NAME("Crew")
	id_types = list(/obj/item/weapon/card/id/bearcat)

/decl/hierarchy/outfit/job/bearcat/captain
	name = BEARCAT_OUTFIT_JOB_NAME("Captain")
	uniform = /obj/item/clothing/under/casual_pants/classicjeans
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda/captain
	id_types = list(/obj/item/weapon/card/id/bearcat_captain)

/decl/hierarchy/outfit/job/bearcat/captain/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/toggleable/hawaii/random/eyegore = new()
		if(uniform.can_attach_accessory(eyegore))
			uniform.attach_accessory(null, eyegore)
		else
			qdel(eyegore)

#undef BEARCAT_OUTFIT_JOB_NAME

/obj/effect/submap_landmark/spawnpoint/captain
	name = "Independant Captain"

/obj/effect/submap_landmark/spawnpoint/crewman
	name = "Independant Crewman"
