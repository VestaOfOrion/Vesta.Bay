/datum/species/kidan
	name = SPECIES_KIDAN
	name_plural = "Kida"
	icobase = 'modular_boh/icon/mob/species/kidan/r_kidan.dmi'
	deform = 'modular_boh/icon/mob/species/kidan/r_def_kidan.dmi'
	husk_icon = 'modular_boh/icon/mob/species/kidan/overlay_husk.dmi'
	preview_icon = 'modular_boh/icon/mob/species/kidan/r_kidan.dmi'
	hidden_from_codex = FALSE


	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp, /datum/unarmed_attack/claws)

	description = "Ants"

	spawn_flags = SPECIES_CAN_JOIN
	appearance_flags =  HAS_UNDERWEAR | HAS_EYE_COLOR

	sexybits_location = BP_GROIN
/*
	has_limbs = list(
		BP_CHEST =  list("path" = /obj/item/organ/external/chest/kidan),
		BP_GROIN =  list("path" = /obj/item/organ/external/groin/kidan),
		BP_HEAD =   list("path" = /obj/item/organ/external/head/kidan),
		BP_L_ARM =  list("path" = /obj/item/organ/external/arm/kidan),
		BP_L_HAND = list("path" = /obj/item/organ/external/hand/kidan),
		BP_R_ARM =  list("path" = /obj/item/organ/external/arm/right/kidan),
		BP_R_HAND = list("path" = /obj/item/organ/external/hand/right/kidan),
		BP_R_LEG =  list("path" = /obj/item/organ/external/leg/right/kidan),
		BP_L_LEG =  list("path" = /obj/item/organ/external/leg/kidan),
		BP_L_FOOT = list("path" = /obj/item/organ/external/foot/kidan),
		BP_R_FOOT = list("path" = /obj/item/organ/external/foot/right/kidan)
		)
*/
	override_organ_types = list(
		BP_BRAIN = /obj/item/organ/internal/brain/kidan,
		BP_EYES = /obj/item/organ/internal/eyes/kidan,
		BP_LUNGS = /obj/item/organ/internal/lungs/kidan,
		BP_LIVER = /obj/item/organ/internal/liver/kidan,
		BP_HEART = /obj/item/organ/internal/heart/kidan,
		BP_KIDNEYS = /obj/item/organ/internal/kidneys/kidan
	)