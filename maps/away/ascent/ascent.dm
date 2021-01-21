#define ASCENT_COLONY_SHIP_NAME "\improper Ascent seedship"

#include "ascent_areas.dm"
#include "ascent_jobs.dm"
#include "ascent_shuttles.dm"

// Hestia Ascent stuff and fluff - lamasmaster//
#include "../../../modular_boh/code/modules/ascent/ascent_general.dm"
#include "../../../modular_boh/code/modules/ascent/ascent_implants.dm"
//

// Map template data.
/datum/map_template/ruin/away_site/ascent_seedship
	name = ASCENT_COLONY_SHIP_NAME
	id = "awaysite_ascent_seedship"
	description = "A small Ascent colony ship."
	suffixes = list("ascent/ascent-1.dmm")
	cost = 0.5
	shuttles_to_initialise = list(
		/datum/shuttle/autodock/overmap/ascent_seedship,
		/datum/shuttle/autodock/overmap/ascent
	)
	spawn_weight = 0.67

// Overmap objects.
/obj/effect/overmap/visitable/ship/landable/ascent_seedship
	name = ASCENT_COLONY_SHIP_NAME
	shuttle = "Ascent Seedship"
	desc = "Wake signature indicates a small to medium sized vessel of unknown design."
	multiz = 1
	icon_state = "ship"
	moving_state = "ship_moving"
	color = "#491749"
	vessel_mass = 2500
	fore_dir = EAST
	max_speed = 1/(1 SECOND)
	hide_from_reports = TRUE
	vessel_size = SHIP_SIZE_SMALL
	initial_restricted_waypoints = list(
		"Amphiesmenoptera" = list("nav_hangar_ascent_one")
	)

/obj/effect/overmap/visitable/sector/ascent_space
	name = "Empty Sector"
	desc = "Slight traces of a cloaking device are present. Unable to determine exact location."
	in_space = 1
	icon_state = "event"
	hide_from_reports = TRUE

/obj/effect/submap_landmark/joinable_submap/ascent_seedship
	name = ASCENT_COLONY_SHIP_NAME
	archetype = /decl/submap_archetype/ascent_seedship
	submap_datum_type = /datum/submap/ascent

/obj/effect/submap_landmark/joinable_submap/ascent_seedship/Initialize(mapload)
	var/list/all_elements = list(
		"Hydrogen",      "Helium",     "Lithium",     "Beryllium",    "Carbon",       "Nitrogen",      "Oxygen",
		"Fluorine",      "Neon",       "Sodium",      "Magnesium",    "Silicon",      "Phosphorus",    "Sulfur",
		"Chlorine",      "Argon",      "Potassium",   "Calcium",      "Scandium",     "Titanium",      "Chromium",
		"Manganese",     "Iron",       "Cobalt",      "Nickel",       "Zinc",         "Gallium",       "Germanium",
		"Arsenic",       "Selenium",   "Bromine",     "Krypton",      "Rubidium",     "Strontium",     "Zirconium",
		"Molybdenum",    "Technetium", "Ruthenium",   "Rhodium",      "Palladium",    "Silver",        "Cadmium",
		"Indium",        "Tin",        "Antimony",    "Tellurium",    "Iodine",       "Xenon",         "Caesium",
		"Barium",        "Lanthanum",  "Cerium",      "Praseodymium", "Neodymium",    "Promethium",    "Samarium",
		"Gadolinium",    "Dysprosium", "Holmium",     "Erbium",       "Ytterbium",    "Hafnium",       "Tantalum",
		"Tungsten",      "Rhenium",    "Osmium",      "Iridium",      "Gold",         "Mercury",       "Lead",
		"Bismuth",       "Polonium",   "Astatine",    "Radon",        "Francium",     "Radium",        "Actinium",
		"Thorium",       "Uranium",    "Plutonium",   "Americium",    "Curium",       "Berkelium",     "Californium",
		"Einsteinium",   "Fermium",    "Mendelevium", "Nobelium",     "Lawrencium",   "Rutherfordium", "Dubnium",
		"Seaborgium",    "Bohrium",    "Hassium",     "Meitnerium",   "Darmstadtium", "Roentgenium",   "Copernicium",
		"Nihonium",      "Flerovium",  "Moscovium",   "Livermorium",  "Tennessine",   "Oganesson"
	)
	name = "[pick(all_elements)]-[rand(10,99)]-[rand(10,99)]"
	. = ..()
