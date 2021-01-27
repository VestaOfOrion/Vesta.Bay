/********
Synthetic
********/

/datum/job/cyborg
	total_positions = 3
	spawn_positions = 3
	supervisors = "your laws"
	minimal_player_age = 3
	allowed_ranks = list(
		/datum/mil_rank/civ/synthetic
	)

/datum/job/ai
	//minimal_player_age = 7
	minimal_player_age = 0 //TEMPORARY. FOR DEBUG REASONS
	allowed_ranks = list(
		/datum/mil_rank/civ/synthetic
	)

/*******
Civilian
*******/

/datum/job/assistant
	title = "Passenger"
	total_positions = 12
	spawn_positions = 12
	supervisors = "the Executive Officer"
	economic_power = 6
	announced = FALSE
	alt_titles = list(
		"Journalist" = /decl/hierarchy/outfit/job/torch/passenger/passenger/journalist,
		"Historian",
		"Assistant",
		"Off-Duty",
		"Botanist",
		"Investor" = /decl/hierarchy/outfit/job/torch/passenger/passenger/investor,
		"Psychologist" = /decl/hierarchy/outfit/job/torch/passenger/passenger/psychologist,
		"Naturalist",
		"Ecologist",
		"Entertainer",
		"Independent Observer",
		"Sociologist",
		"Trainer")
	outfit_type = /decl/hierarchy/outfit/job/torch/passenger/passenger
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor
	)

/datum/job/merchant
	title = "Merchant"
	department = "Civilian"
	department_flag = CIV
	total_positions = 2
	spawn_positions = 2
	availablity_chance = 100
	supervisors = "the invisible hand of the market"
	ideal_character_age = 30
	minimal_player_age = 0
	create_record = 0
	outfit_type = /decl/hierarchy/outfit/job/torch/merchant
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/alien
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/alien
	)
	latejoin_at_spawnpoints = 1
	access = list(access_merchant)
	announced = FALSE
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

	max_skill = list(	SKILL_BUREAUCRACY   = SKILL_EXPERT,
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
	skill_points = 24
	required_language = null
	give_psionic_implant_on_join = FALSE
