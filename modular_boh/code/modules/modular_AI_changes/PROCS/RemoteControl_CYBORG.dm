/mob/living/silicon/robot/flying/ascent
	var/mob/living/silicon/ai/controlling_ai
	var/obj/item/device/radio/drone_silicon_radio

//Manages AI being able to take control of cyborgs. Shit doesnt work.
/mob/living/silicon/robot/flying/ascent/attack_ai(var/mob/living/silicon/ai/user)

	if(!istype(user) || controlling_ai)
		to_chat(user, "<span class='warning'>ERROR:UNAUTHORISED ACCESS</span>")
		return

	if(stat != 2 || client || key)
		to_chat(user, "<span class='warning'>You cannot take control of an autonomous, active drone.</span>")
		return

	if(health < -35 || emagged)
		to_chat(user, "<span class='notice'><b>WARNING:</b> connection timed out.</span>")
		return

	assume_control(user)

//Actual code for this
/mob/living/silicon/robot/flying/ascent/proc/assume_control(var/mob/living/silicon/ai/user)
	user.controlling_drone = src
	controlling_ai = user
	connected_ai = user
	verbs += /mob/living/silicon/robot/flying/ascent/proc/release_ai_control_verb
	local_transmit = FALSE
	languages = controlling_ai.languages.Copy()

	//give controlled drone access to AI radio
	drone_silicon_radio = silicon_radio
	silicon_radio = new /obj/item/device/radio/headset/heads/ai_integrated(src)
	//silicon_radio.recalculateChannels()
	add_language(LANGUAGE_EAL, 0)//Same with below
	add_language(LANGUAGE_ROBOT_GLOBAL, 0)//No communicating with primitive AI. Different communication protocols.
	add_language(LANGUAGE_MANTID_NONVOCAL, 1)//Give them clicky languages
	add_language(LANGUAGE_MANTID_VOCAL, 1)
	add_language(LANGUAGE_MANTID_BROADCAST, 1)

	default_language = controlling_ai.default_language

	stat = CONSCIOUS
	if(user.mind)
		user.mind.transfer_to(src)
	else
		key = user.key
	name = "Drone of "+controlling_ai.name //Lazy
	to_chat(src, "<span class='notice'><b>You have shunted your primary control loop into \a [initial(name)].</b> Use the <b>Release Control</b> verb to return to your core.</span>")

//Alows AI to force the production of drones to control
/obj/machinery/drone_fabricator/attack_ai(var/mob/living/silicon/ai/user)

	if(!istype(user) || user.controlling_drone || !config.allow_drone_spawn)
		return

	if(stat & NOPOWER)
		to_chat(user, "<span class='warning'>\The [src] is unpowered.</span>")
		return

	if(!produce_drones)
		to_chat(user, "<span class='warning'>\The [src] is disabled.</span>")
		return

	if(drone_progress < 100)
		to_chat(user, "<span class='warning'>\The [src] is not ready to produce a new drone.</span>")
		return

	if(count_drones() >= config.max_maint_drones)
		to_chat(user, "<span class='warning'>The drone control subsystems are tasked to capacity; they cannot support any more drones.</span>")
		return

	var/mob/living/silicon/robot/flying/ascent/new_drone = create_drone()
	new_drone.assume_control(user)

//Annoying failsafes
/mob/living/silicon/robot/flying/ascent/death(gibbed)
	if(controlling_ai)
		release_ai_control("<b>WARNING: remote system failure.</b> Connection timed out.")
	drone_silicon_radio = null
	. = ..(gibbed)

/mob/living/silicon/ai/death(gibbed)
	if(controlling_drone)
		controlling_drone.release_ai_control("<b>WARNING: Primary control loop failure.</b> Session terminated.")
	. = ..(gibbed)

/mob/living/silicon/ai/Life()
	. = ..()
	if(controlling_drone && stat != CONSCIOUS)
		controlling_drone.release_ai_control("<b>WARNING: Primary control loop failure.</b> Session terminated.")

/mob/living/silicon/robot/flying/ascent/proc/release_ai_control_verb()
	set name = "Release Control"
	set desc = "Release control of a remote drone."
	set category = "Silicon Commands"

	release_ai_control("Remote session terminated.")

//So the AI doesnt send itself to nullspace.
/mob/living/silicon/robot/flying/ascent/proc/release_ai_control(var/message = "Connection terminated.")

	if(controlling_ai)
		if(mind)
			mind.transfer_to(controlling_ai)
		else
			controlling_ai.key = key
		to_chat(controlling_ai, "<span class='notice'>[message]</span>")
		controlling_ai.controlling_drone = null
		controlling_ai.laws = /datum/ai_laws/ascent //BECAUSE BAYCODE
		controlling_ai = null
	//releases controlled drone access to AI radio
	QDEL_NULL(silicon_radio)
	silicon_radio = drone_silicon_radio
	drone_silicon_radio = null
	default_language = all_languages[LANGUAGE_DRONE_GLOBAL]

	verbs -= /mob/living/silicon/robot/flying/ascent/proc/release_ai_control_verb
	updatename()
	death()