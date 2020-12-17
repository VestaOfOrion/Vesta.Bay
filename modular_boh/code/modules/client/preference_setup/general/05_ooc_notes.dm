/datum/preferences
	var/list/ooc_notes     = list()

/datum/category_item/player_setup_item/physical/ooc_notes
	name = "OOC Notes"
	sort_order = 5

/datum/category_item/player_setup_item/physical/ooc_notes/load_character(datum/pref_record_reader/R)
	pref.flavor_texts["OOC"] = R.read("flavor_texts_OOC")

/datum/category_item/player_setup_item/physical/ooc_notes/save_character(datum/pref_record_writer/W)
    W.write("flavor_texts_OOC", pref.flavor_texts["OOC"])

/datum/category_item/player_setup_item/physical/ooc_notes/sanitize_character()
	if(!istype(pref.flavor_texts))        pref.flavor_texts = list()    

/datum/category_item/player_setup_item/physical/ooc_notes/proc/SetFlavorText(mob/user)
	var/HTML = "<body>"
	HTML += "<a href='?src=\ref[src];flavor_text=OOC'>OOC:</a> "
	HTML += TextPreview(pref.flavor_texts["OOC"])
	HTML += "<br>"
	show_browser(user, HTML, "window=flavor_text;size=430x300")
	return	