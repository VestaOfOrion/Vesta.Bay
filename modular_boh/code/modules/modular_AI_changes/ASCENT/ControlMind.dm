/datum/job/submap/ascent/control_mind
	title = "Ascent Control Mind"
	supervisors = "the Gyne"
	total_positions = 1
	info = "You are a Machine Intelligence of an independent Ascent vessel. The Gyne you assist, and her children, have wandered into this sector full of primitive bioforms. Try to keep them alive, and assist where you can."
	set_species_on_join = /mob/living/silicon/ai/ascent

/obj/effect/submap_landmark/spawnpoint/ascent_seedship/control
	name = "Ascent Control Mind"

/mob/living/silicon/ai/ascent
	name = "Control Mind"
	laws =   /datum/ai_laws/ascent


/mob/living/silicon/ai/ascent/proc/controlmind_rename() //Should be handled by default AI spawn buuuut....
	set name = "Rename Yourself"
	set category = "IC"
	set desc = "Rename yourself."

	var/new_name = sanitize(input("What is your name?", "Name Yourself.") as text|null, MAX_NAME_LEN)
	if(!new_name)
		return

	fully_replace_character_name("[new_name]")


/mob/living/silicon/ai/ascent/on_mob_init()
	to_chat(src, "<B>You are a Machine Intelligence of an independent Ascent vessel. The Gyne you assist, and her children, have wandered into this sector full of primitive bioforms. Try to keep them alive, and assist where you can.</B>")
	to_chat(src, "<B>You are in service to the Gyne. Remember; your laws are currently a suggestion and should be treated as such, you should act in the best interests of the Ascent, with priority given to the Gyne.</B>")
