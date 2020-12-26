/datum/map/submap/bearcat
	allowed_jobs = list(/datum/job/captain, /datum/job/chief_engineer, /datum/job/doctor, /datum/job/hop, /datum/job/engineer)
	species_to_job_whitelist = list(
		/datum/species/vox = list(/datum/job/assistant)
	)

/datum/job/submap/bearcat/captain
	supervisors = "the Merchant Code and your conscience"
	outfit_type = /decl/hierarchy/outfit/job/bearcat/captain
	min_skill = list(   SKILL_WEAPONS = SKILL_ADEPT,
	                    SKILL_SCIENCE     = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX)
	skill_points = 30

/datum/job/captain/get_access()
	return get_all_station_access()

/datum/job/submap/bearcat/chief_engineer
	title = "Chief Engineer"
	supervisors = "the Captain and the laws of physics."
	department_flag = ENG
	outfit_type = /decl/hierarchy/outfit/job/bearcat/chief_engineer
	min_skill = list(   SKILL_BUREAUCRACY  = SKILL_BASIC,
	                    SKILL_COMPUTER     = SKILL_ADEPT,
	                    SKILL_EVA          = SKILL_ADEPT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_ADEPT,
	                    SKILL_ATMOS        = SKILL_ADEPT,
	                    SKILL_ENGINES      = SKILL_EXPERT)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)
	skill_points = 30

/datum/job/submap/bearcat/doctor
	title = "Surgeon"
	supervisors = "the Captain and your idea of Hippocratic Oath"
	outfit_type = /decl/hierarchy/outfit/job/bearcat/doc
	total_positions = 1
	spawn_positions = 1
	hud_icon = "hudmedicaldoctor"
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_MEDICAL     = SKILL_EXPERT,
	                    SKILL_ANATOMY     = SKILL_EXPERT,
	                    SKILL_CHEMISTRY   = SKILL_BASIC)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)
	skill_points = 28

/datum/job/submap/bearcat/hop
	title = "First Mate"
	supervisors = "the Captain."
	outfit_type = /decl/hierarchy/outfit/job/bearcat/mate
	hud_icon = "hudheadofpersonnel"
	min_skill = list(   SKILL_WEAPONS     = SKILL_BASIC,
	                    SKILL_FINANCE     = SKILL_EXPERT,
	                    SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_FINANCE     = SKILL_MAX,
	                    SKILL_BUREAUCRACY = SKILL_ADEPT)
	skill_points = 30

/datum/job/submap/bearcat/assistant
	title = "Deck Hand"
	supervisors = "literally everyone."
	outfit_type = /decl/hierarchy/outfit/job/bearcat/hand
	hud_icon = "hudcargotechnician"

/datum/job/submap/bearcat/engineer
	title = "Engineer"
	supervisors = "Chief Engineer"
	total_positions = 2
	spawn_positions = 2
	hud_icon = "hudengineer"
	min_skill = list(   SKILL_COMPUTER     = SKILL_BASIC,
	                    SKILL_EVA          = SKILL_BASIC,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_BASIC,
	                    SKILL_ATMOS        = SKILL_BASIC,
	                    SKILL_ENGINES      = SKILL_BASIC)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)
	skill_points = 20


// OUTFITS
#define BEARCAT_OUTFIT_JOB_NAME(job_name) ("Bearcat - Job - " + job_name)

/decl/hierarchy/outfit/job/bearcat/
	hierarchy_type = /decl/hierarchy/outfit/job/bearcat
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	l_ear = null
	r_ear = null

/decl/hierarchy/outfit/job/bearcat/captain
	name = BEARCAT_OUTFIT_JOB_NAME("Captain")
	uniform = /obj/item/clothing/under/casual_pants/classicjeans
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda/captain
	r_pocket = /obj/item/device/radio
	id_types = list(/obj/item/weapon/card/id/gold)


/decl/hierarchy/outfit/job/bearcat/captain/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/toggleable/hawaii/random/eyegore = new()
		if(uniform.can_attach_accessory(eyegore))
			uniform.attach_accessory(null, eyegore)
		else
			qdel(eyegore)

/decl/hierarchy/outfit/job/bearcat/chief_engineer
	name = BEARCAT_OUTFIT_JOB_NAME("Chief Engineer")
	uniform = /obj/item/clothing/under/rank/chief_engineer
	glasses = /obj/item/clothing/glasses/welding/superior
	suit = /obj/item/clothing/suit/storage/hazardvest
	gloves = /obj/item/clothing/gloves/thick
	shoes = /obj/item/clothing/shoes/workboots
	pda_type = /obj/item/modular_computer/pda/heads/ce
	l_hand = /obj/item/weapon/wrench
	belt = /obj/item/weapon/storage/belt/utility/full
	id_types = list(/obj/item/weapon/card/id/engineering/head)
	r_pocket = /obj/item/device/radio
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/bearcat/doc
	name = BEARCAT_OUTFIT_JOB_NAME("Ship's Doc")
	uniform = /obj/item/clothing/under/det/black
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	shoes = /obj/item/clothing/shoes/laceup
	pda_type = /obj/item/modular_computer/pda/medical

/decl/hierarchy/outfit/job/bearcat/mate
	name = BEARCAT_OUTFIT_JOB_NAME("First Mate")
	uniform = /obj/item/clothing/under/suit_jacket/checkered
	shoes = /obj/item/clothing/shoes/laceup
	glasses = /obj/item/clothing/glasses/sunglasses/big
	pda_type = /obj/item/modular_computer/pda/cargo
	l_hand = /obj/item/weapon/material/clipboard

/decl/hierarchy/outfit/job/bearcat/hand
	name = BEARCAT_OUTFIT_JOB_NAME("Deck Hand")

/decl/hierarchy/outfit/job/bearcat/hand/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(list(/obj/item/clothing/under/overalls,/obj/item/clothing/under/focal,/obj/item/clothing/under/hazard,/obj/item/clothing/under/rank/cargotech,/obj/item/clothing/under/color/black,/obj/item/clothing/under/color/grey,/obj/item/clothing/under/casual_pants/track, ))

/decl/hierarchy/outfit/job/bearcat/hand/cook
	name = BEARCAT_OUTFIT_JOB_NAME("Cook")
	head = /obj/item/clothing/head/chefhat
	suit = /obj/item/clothing/suit/chef/classic

/decl/hierarchy/outfit/job/bearcat/hand/engine
	name = BEARCAT_OUTFIT_JOB_NAME("Junior Engineer")
	head = /obj/item/clothing/head/hardhat
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/bearcat/hand/engine/pre_equip(mob/living/carbon/human/H)
	..()
	if(prob(50))
		suit = /obj/item/clothing/suit/storage/hazardvest