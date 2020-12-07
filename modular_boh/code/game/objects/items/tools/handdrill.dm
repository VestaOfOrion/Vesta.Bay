// Hand drill item - switches between screwdriver and wrench

/obj/item/weapon/screwdriver/power
	name = "hand drill"
	desc = "A simple powered hand drill. It's fitted with a screw bit."
	icon = 'modular_boh/icon/obj/tools.dmi'
	icon_state = "drill_screw"
	item_state = "drill"
	slot_flags = SLOT_BELT
	matter = list(MATERIAL_STEEL = 250)
	force = 5
	w_class = ITEM_SIZE_NORMAL
	origin_tech = list(TECH_MATERIAL = 1, TECH_ENGINEERING = 3)
	attack_verb = list("drilled", "screwed", "jabbed","whacked")
	lock_picking_level = 1
	build_from_parts = FALSE

/obj/item/weapon/screwdriver/power/attack_self(mob/user)
	playsound(get_turf(user),'modular_boh/sounds/items/change_drill.ogg',50,1)
	var/obj/item/b_drill = new /obj/item/weapon/wrench/power()
	b_drill.name = name
	to_chat(user, "<span class='notice'>You attach the bolt driver bit to [src].</span>")
	qdel(src)
	user.put_in_active_hand(b_drill)

/obj/item/weapon/wrench/power
	name = "hand drill"
	desc = "A simple powered hand drill. It's fitted with a bolt driver bit."
	icon = 'modular_boh/icon/obj/tools.dmi'
	icon_state = "drill_bolt"
	item_state = "drill"
	matter = list(MATERIAL_STEEL = 250)
	force = 5
	w_class = ITEM_SIZE_NORMAL
	origin_tech = list(TECH_MATERIAL = 1, TECH_ENGINEERING = 3)
	attack_verb = list("drilled", "screwed", "jabbed","whacked")

/obj/item/weapon/wrench/power/Initialize()
	. = ..()
	icon_state = initial(icon_state)
	item_state = initial(item_state)

/obj/item/weapon/wrench/power/attack_self(mob/user)
	playsound(get_turf(user),'modular_boh/sounds/items/change_drill.ogg',50,1)
	var/obj/item/s_drill = new /obj/item/weapon/screwdriver/power()
	s_drill.name = name
	to_chat(user, "<span class='notice'>You attach the screwdriver bit to [src].</span>")
	qdel(src)
	user.put_in_active_hand(s_drill)

/obj/item/weapon/screwdriver/power/resolve_attackby(atom/A, mob/user)
	..()
	if(istype(A, /mob/))
		if(user.a_intent != I_HURT)
			return
	else if(istype(A, /turf/))
		if(!istype(A, /turf/simulated/wall))
			return
	else if(istype(A, /obj/structure))
		if(istype(A, /obj/structure/catwalk) || istype(A, /obj/structure/ladder))
			return
		else if(istype(A), /obj/structure/closet/)
			return
	else if(istype(A, /obj/machinery/))
	else
		return
	playsound(get_turf(user),'modular_boh/sounds/items/drill_use.ogg',50,1)

/obj/item/weapon/wrench/power/resolve_attackby(atom/A, mob/user)
	..()
	if(istype(A, /mob/))
		if(user.a_intent != I_HURT)
			return
	else if(istype(A, /turf/))
		if(!istype(A, /turf/simulated/wall))
			return
	else if(istype(A, /obj/structure))
		if(istype(A, /obj/structure/catwalk) || istype(A, /obj/structure/ladder))
			return
		else if(istype(A), /obj/structure/closet/)
			return
	else if(istype(A, /obj/machinery/))
		if(istype(A, /obj/machinery/door/airlock/))	//Sound gets called for wrench without being used
			return
	else
		return
	playsound(get_turf(user),'modular_boh/sounds/items/drill_use.ogg',50,1)