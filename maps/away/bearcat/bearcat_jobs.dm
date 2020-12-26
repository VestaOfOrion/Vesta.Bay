/datum/job/submap/bearcat_captain
	title = "Independant Captain"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/bearcat/captain
	is_semi_antagonist = TRUE
	supervisors = "your morals. You do have those, right?"
	info = "You are the captain of an independent frigate. Work together with your subordinates to \
	achieve your goals; whatever they may be."

/datum/job/submap/bearcat_crewman
	title = "Independant Crewman"
	supervisors = "the Captain and your conscience."
	total_positions = 5
	outfit_type = /decl/hierarchy/outfit/job/bearcat/crew
	is_semi_antagonist = TRUE
	info = "You are a crewman aboard an independent frigate. Work together with your fellow crewmates and your captain to \
	achieve your goals; whatever they may be."

#define BEARCAT_OUTFIT_JOB_NAME(job_name) ("Bearcat - Job - " + job_name)

/decl/hierarchy/outfit/job/bearcat
	hierarchy_type = /decl/hierarchy/outfit/job/bearcat
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	r_pocket = /obj/item/device/radio
	l_ear = null
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
