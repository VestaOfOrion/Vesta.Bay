/////////
// Double / Couch - BoH
/////////

/obj/structure/bed/double
	name = "double bed"
    icon = 'modular_boh/icon/boh/structures/beds.dmi'
	icon_state = "doublebed"
	base_icon = "doublebed"

/obj/structure/bed/double/padded/New(var/newloc)
	..(newloc, MATERIAL_WOOD, MATERIAL_CLOTH)

/obj/structure/bed/double/post_buckle_mob(mob/living/M as mob)
	if(M.buckled == src)
		M.pixel_y = 13
	else
		M.pixel_y = 0