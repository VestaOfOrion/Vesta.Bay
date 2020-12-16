/datum/gear/accessory/solawardmajor
	display_name = "SolGov major award selection"
	description = "A medal or ribbon awarded to SolGov personnel for significant accomplishments."
	path = /obj/item/clothing/accessory
	cost = 8
	allowed_branches = SOLGOV_BRANCHES

/datum/gear/accessory/solawardmajor/New()
	..()
	var/solmajors = list()
	solmajors["Iron star"] = /obj/item/clothing/accessory/medal/solgov/iron/star
	solmajors["Bronze heart"] = /obj/item/clothing/accessory/medal/solgov/bronze/heart
	solmajors["Silver sword"] = /obj/item/clothing/accessory/medal/solgov/silver/sword
	solmajors["Medical heart"] = /obj/item/clothing/accessory/medal/solgov/heart
	solmajors["Valor medal"] = /obj/item/clothing/accessory/medal/solgov/silver/sol
	solmajors["Sapienterian medal"] = /obj/item/clothing/accessory/medal/solgov/gold/sol
	solmajors["Peacekeeper ribbon"] = /obj/item/clothing/accessory/ribbon/solgov/peace
	solmajors["Marksman ribbon"] = /obj/item/clothing/accessory/ribbon/solgov/marksman
	gear_tweaks += new/datum/gear_tweak/path(solmajors)

/datum/gear/accessory/solawardminor
	display_name = "SolGov minor award selection"
	description = "A medal or ribbon awarded to SolGov personnel for minor accomplishments."
	path = /obj/item/clothing/accessory
	cost = 5
	allowed_branches = SOLGOV_BRANCHES

/datum/gear/accessory/solawardminor/New()
	..()
	var/solminors = list()
	solminors["Surveyor Corps medal"] = /obj/item/clothing/accessory/medal/solgov/iron/sol
	solminors["Operations medal"] = /obj/item/clothing/accessory/medal/solgov/bronze/sol
	solminors["Frontier ribbon"] = /obj/item/clothing/accessory/ribbon/solgov/frontier
	solminors["Instructor ribbon"] = /obj/item/clothing/accessory/ribbon/solgov/instructor
	gear_tweaks += new/datum/gear_tweak/path(solminors)

/datum/gear/accessory/tags
	display_name = "Dog tags"
	path = /obj/item/clothing/accessory/badge/solgov/tags
	custom_setup_proc = /obj/item/clothing/accessory/badge/solgov/tags/proc/loadout_setup

/datum/gear/accessory/ec_scarf
	display_name = "Surveyor Corps scarf"
	path = /obj/item/clothing/accessory/solgov/ec_scarf
	description = "A section-specific scarf for Surveryor Corps uniforms."
	flags = GEAR_HAS_TYPE_SELECTION
	allowed_branches = NT_BRANCHES

/datum/gear/accessory/ec_patch
	display_name = "Surveyor Corps patch"
	path = /obj/item/clothing/accessory/solgov/ec_patch
	description = "A shoulder patch representing the Surveyor Corps."
	flags = GEAR_HAS_TYPE_SELECTION
	allowed_branches = NT_BRANCHES

/datum/gear/accessory/torch_patch
	display_name = "Dagon mission patch"
	path = /obj/item/clothing/accessory/solgov/torch_patch
	description = "A shoulder patch representing the NTSS Dagon and its mission. Given to all the oddjobs pulled from various branches to work on the Dagon."

/datum/gear/accessory/pilot_pin
	display_name = "pilot's qualification pin"
	path = /obj/item/clothing/accessory/solgov/specialty/pilot
	allowed_skills = list(SKILL_PILOT = SKILL_ADEPT)
	allowed_branches = NT_BRANCHES

/datum/gear/accessory/fleetpatch
	display_name = "Fleet patch"
	path = /obj/item/clothing/accessory/solgov/fleet_patch
	flags = GEAR_HAS_TYPE_SELECTION
	allowed_branches = NT_BRANCHES

/datum/gear/accessory/armband_ma
	display_name = "Master at Arms brassard"
	path = /obj/item/clothing/accessory/armband/solgov/ma
	allowed_roles = SECURITY_ROLES

/datum/gear/accessory/armband_security
	allowed_roles = SECURITY_ROLES

/datum/gear/accessory/armband_cargo
	allowed_roles = SUPPLY_ROLES

/datum/gear/accessory/armband_medical
	allowed_roles = MEDICAL_ROLES

/datum/gear/accessory/armband_emt
	allowed_roles = list(/datum/job/doctor, /datum/job/medical_trainee)

/datum/gear/accessory/armband_corpsman
	display_name = "Medical armband"
	path = /obj/item/clothing/accessory/armband/medblue
	allowed_roles = list(/datum/job/cmo, /datum/job/senior_doctor, /datum/job/junior_doctor, /datum/job/doctor, /datum/job/medical_trainee)

/datum/gear/accessory/armband_engineering
	allowed_roles = ENGINEERING_ROLES

/datum/gear/accessory/armband_hydro
	allowed_roles = list(/datum/job/rd, /datum/job/scientist, /datum/job/scientist_assistant, /datum/job/assistant)

/datum/gear/accessory/armband_nt
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/accessory/ntaward
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/accessory/tie
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/accessory/tie_color
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/accessory/stethoscope
	allowed_roles = STERILE_ROLES

/datum/gear/storage/brown_vest
	allowed_roles = list(/datum/job/chief_engineer, /datum/job/senior_engineer, /datum/job/engineer, /datum/job/roboticist, /datum/job/qm, /datum/job/cargo_tech,
						/datum/job/mining, /datum/job/janitor, /datum/job/scientist_assistant, /datum/job/merchant, /datum/job/nt_pilot, /datum/job/engineer_trainee, /datum/job/explorer, /datum/job/nt_pilot, /datum/job/pathfinder, /datum/job/submap/CTI_pilot, /datum/job/submap/CTI_engineer, /datum/job/submap/scavver_pilot, /datum/job/submap/scavver_doctor, /datum/job/submap/scavver_engineer)

/datum/gear/storage/black_vest
	allowed_roles = list(/datum/job/hos, /datum/job/warden, /datum/job/detective, /datum/job/officer, /datum/job/merchant)

/datum/gear/storage/white_vest
	allowed_roles = list(/datum/job/cmo, /datum/job/senior_doctor, /datum/job/junior_doctor, /datum/job/doctor, /datum/job/medical_trainee, /datum/job/chemist, /datum/job/merchant, /datum/job/medical_trainee)

/datum/gear/storage/brown_drop_pouches
	allowed_roles = list(/datum/job/chief_engineer, /datum/job/senior_engineer, /datum/job/engineer, /datum/job/roboticist, /datum/job/qm, /datum/job/cargo_tech,
						/datum/job/mining, /datum/job/janitor, /datum/job/scientist_assistant, /datum/job/merchant, /datum/job/engineer_trainee, /datum/job/submap/CTI_pilot, /datum/job/submap/CTI_engineer, /datum/job/submap/scavver_pilot, /datum/job/submap/scavver_doctor, /datum/job/submap/scavver_engineer)

/datum/gear/storage/black_drop_pouches
	allowed_roles = list(/datum/job/hos, /datum/job/warden, /datum/job/detective, /datum/job/officer, /datum/job/merchant)

/datum/gear/storage/white_drop_pouches
	allowed_roles = list(/datum/job/cmo, /datum/job/senior_doctor, /datum/job/junior_doctor, /datum/job/doctor, /datum/job/medical_trainee, /datum/job/chemist, /datum/job/merchant, /datum/job/medical_trainee)

/datum/gear/tactical/holster
	allowed_roles = ARMED_ROLES

/datum/gear/tactical/holster/New()
	..()
	var/holsters = list()
	holsters["Shoulder holster"] = /obj/item/clothing/accessory/storage/holster
	holsters["Armpit holster"] = /obj/item/clothing/accessory/storage/holster/armpit
	holsters["Waist holster"] = /obj/item/clothing/accessory/storage/holster/waist
	holsters["Hip holster"] = /obj/item/clothing/accessory/storage/holster/hip
	holsters["Thigh holster"] = /obj/item/clothing/accessory/storage/holster/thigh
	gear_tweaks += new/datum/gear_tweak/path(holsters)

/datum/gear/tactical/sheath
	allowed_roles = list(/datum/job/pathfinder, /datum/job/explorer)

/datum/gear/tactical/armor_deco
	allowed_roles = ARMORED_ROLES

/datum/gear/tactical/press_tag
	display_name = "Press tag"
	path = /obj/item/clothing/accessory/armor/tag/press
	allowed_roles = list(/datum/job/assistant)

/datum/gear/tactical/helm_covers
	allowed_roles = ARMORED_ROLES

/datum/gear/clothing/hawaii
	allowed_roles = SEMIFORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/scarf
	allowed_roles = SEMIANDFORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/flannel
	allowed_roles = SEMIFORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/vest
	allowed_roles = FORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/suspenders
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/suspenders/colorable
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/wcoat
	allowed_roles = FORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/zhongshan
	allowed_roles = FORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/dashiki
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/thawb
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/sherwani
	allowed_roles = FORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/qipao
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/sweater
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/tangzhuang
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/accessory/bowtie
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/accessory/ftupin
	allowed_branches = CIVILIAN_BRANCHES

/*********************
 tactical accessories
*********************/
/datum/gear/tactical/ubac
	display_name = "Black UBAC shirt"
	path = /obj/item/clothing/accessory/ubac
	allowed_roles = ARMORED_ROLES
	allowed_branches = NT_BRANCHES

/datum/gear/tactical/ubac/blue
	display_name = "Navy blue UBAC shirt"
	path = /obj/item/clothing/accessory/ubac/blue
	allowed_branches = NT_BRANCHES

/datum/gear/tactical/ubac/misc
	display_name = "Miscellaneous UBAC shirt selection"
	path = /obj/item/clothing/accessory/ubac
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/tactical/ubac/misc/New()
	..()
	var/shirts = list()
	shirts["Green UBAC shirt"] = /obj/item/clothing/accessory/ubac/green
	shirts["Tan UBAC shirt"] = /obj/item/clothing/accessory/ubac/tan
	gear_tweaks += new/datum/gear_tweak/path(shirts)

/datum/gear/tactical/armor_pouches
	display_name = "Black armor pouches"
	path = /obj/item/clothing/accessory/storage/pouches
	cost = 2
	allowed_roles = ARMORED_ROLES

/datum/gear/tactical/armor_pouches/navy
	display_name = "Navy armor pouches"
	path = /obj/item/clothing/accessory/storage/pouches/navy
	allowed_branches = NT_BRANCHES

/datum/gear/tactical/armor_pouches/misc
	display_name = "Miscellaneous armor pouches selection"
	path = /obj/item/clothing/accessory/storage/pouches
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/tactical/armor_pouches/misc/New()
	..()
	var/pouches = list()
	pouches["Green armor pouches"] = /obj/item/clothing/accessory/storage/pouches/green
	pouches["Tan armor pouches"] = /obj/item/clothing/accessory/storage/pouches/tan
	gear_tweaks += new/datum/gear_tweak/path(pouches)

/datum/gear/tactical/large_pouches
	display_name = "Black large armor pouches"
	path = /obj/item/clothing/accessory/storage/pouches/large
	cost = 5
	allowed_roles = ARMORED_ROLES

/datum/gear/tactical/large_pouches/navy
	display_name = "Navy large armor pouches"
	path = /obj/item/clothing/accessory/storage/pouches/large/navy
	allowed_branches = NT_BRANCHES

/datum/gear/tactical/large_pouches/misc
	display_name = "Miscellaneous large armor pouches selection"
	path = /obj/item/clothing/accessory/storage/pouches/large
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/tactical/large_pouches/misc/New()
	..()
	var/pouches = list()
	pouches["Green large armor pouches"] = /obj/item/clothing/accessory/storage/pouches/large/green
	pouches["Tan large armor pouches"] = /obj/item/clothing/accessory/storage/pouches/large/tan
	gear_tweaks += new/datum/gear_tweak/path(pouches)
