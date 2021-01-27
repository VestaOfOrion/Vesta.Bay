/datum/job/senior_scientist
	title = "Senior Researcher"
	department = "Science"
	department_flag = SCI

	total_positions = 1
	spawn_positions = 1
	supervisors = "the Chief Science Officer"
	selection_color = "#633d63"
	economic_power = 12
	minimal_player_age = 3
	minimum_character_age = list(SPECIES_HUMAN = 30)
	ideal_character_age = 50
	alt_titles = list(
		"Research Supervisor")
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/research/senior_scientist
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o1
	)

	access = list(
		access_tox, access_tox_storage, access_maint_tunnels, access_research, access_mining_office,
		access_mining_station, access_xenobiology, access_xenoarch, access_nanotrasen, access_solgov_crew,
		access_expedition_shuttle, access_guppy, access_hangar, access_petrov, access_petrov_helm, access_guppy_helm,
		access_petrov_analysis, access_petrov_phoron, access_petrov_toxins, access_petrov_chemistry, access_petrov_security,
		access_petrov_maint, access_torch_fax, access_radio_sci, access_radio_exp
	)

	min_skill = list( 	SKILL_BUREAUCRACY   = SKILL_EXPERT,
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
	skill_points = 26

/datum/job/scientist
	title = "Scientist"
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Chief Science Officer"
	economic_power = 10
	minimum_character_age = list(SPECIES_HUMAN = 22)
	ideal_character_age = 45
	minimal_player_age = 0
	alt_titles = list(
		"Xenoarcheologist",
		"Anomalist",
		"Researcher",
		"Xenobiologist",
		"Xenobotanist"
	)
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

	outfit_type = /decl/hierarchy/outfit/job/torch/crew/research/scientist
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/solgov,
		/datum/mil_branch/expeditionary_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/civ/contractor = /decl/hierarchy/outfit/job/torch/passenger/research/scientist,
		/datum/mil_rank/sol/scientist = /decl/hierarchy/outfit/job/torch/passenger/research/scientist/solgov
	)

	access = list(
		access_tox, access_tox_storage, access_research, access_petrov, access_petrov_helm,
		access_mining_office, access_mining_station, access_xenobiology, access_guppy_helm,
		access_xenoarch, access_nanotrasen, access_solgov_crew, access_expedition_shuttle, access_guppy, access_hangar,
		access_petrov_analysis, access_petrov_phoron, access_petrov_toxins, access_petrov_chemistry, access_torch_fax,
		access_petrov_maint, access_radio_sci, access_radio_exp, access_maint_tunnels
	)

	minimal_access = list()
	skill_points = 22

/datum/job/scientist_assistant
	title = "Research Assistant"
	department = "Science"
	department_flag = SCI
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Chief Science Officer and science personnel"
	selection_color = "#633d63"
	economic_power = 3
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 30
	alt_titles = list(
		"Custodian" = /decl/hierarchy/outfit/job/torch/passenger/research/assist/janitor,
		"Testing Assistant" = /decl/hierarchy/outfit/job/torch/passenger/research/assist/testsubject,
		"Intern",
		"Clerk",
		"Field Assistant")

	outfit_type = /decl/hierarchy/outfit/job/torch/crew/research
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/solgov,
		/datum/mil_branch/expeditionary_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/ec/e5,
		/datum/mil_rank/civ/contractor = /decl/hierarchy/outfit/job/torch/passenger/research/assist,
		/datum/mil_rank/sol/scientist = /decl/hierarchy/outfit/job/torch/passenger/research/assist/solgov
	)
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

	access = list(
		access_tox, access_tox_storage, access_research, access_petrov,
		access_mining_office, access_mining_station, access_xenobiology, access_guppy_helm,
		access_xenoarch, access_nanotrasen, access_solgov_crew, access_expedition_shuttle, access_guppy, access_hangar,
		access_petrov_analysis, access_petrov_phoron, access_petrov_toxins, access_petrov_chemistry,
		access_radio_sci, access_radio_exp, access_maint_tunnels
	)
