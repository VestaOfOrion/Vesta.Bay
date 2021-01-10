/obj/item/clothing/glasses/sunglasses
	name = "sunglasses"
	desc = "Glasses with polarizing lenses to protect a little against glare and blinding lights."
	icon_state = "shades_black"
	item_state = "shades_black"
	darkness_view = -1
	flash_protection = FLASH_PROTECTION_MINOR

/obj/item/clothing/glasses/sunglasses/tinted
	name = "tinted sunglasses"
	desc = "Sunglasses with a yellowish tint. Pretty stylish."
	icon_state = "shades_tinted"
	item_state = "shades_tinted"

/obj/item/clothing/glasses/sunglasses/mirror
	name = "mirror shades"
	desc = "Sometimes called pilot sunglasses. Reflective surface."
	icon_state = "shades_mirror"
	item_state = "shades_mirror"

/obj/item/clothing/glasses/sunglasses/prescription
	name = "prescription sunglasses"
	desc = "Glasses with polarizing lenses to protect a little against glare and blinding lights."
	icon_state = "shades_black"
	item_state = "shades_black"
	darkness_view = -1
	flash_protection = FLASH_PROTECTION_MINOR
	prescription = 5

/obj/item/clothing/glasses/sunglasses/big
	name = "large sunglasses"
	desc = "Thick lenses and layered filters makes these big sunglasses good against a variety of flash attacks."
	icon_state = "shades_big"
	item_state = "shades_big"
	flash_protection = FLASH_PROTECTION_MODERATE

/obj/item/clothing/glasses/sunglasses/sechud
	name = "HUD sunglasses"
	desc = "Sunglasses with a HUD."
	icon_state = "sunhud"
	hud = /obj/item/clothing/glasses/hud/security
	electric = TRUE
	flash_protection = FLASH_PROTECTION_MODERATE
	req_access = list(access_security)

/obj/item/clothing/glasses/sunglasses/sechud/goggles //now just a more "military" set of HUDglasses for the Dagon
	name = "HUD goggles"
	desc = "A pair of goggles with an inbuilt heads up display. The lenses provide some flash protection."
	icon_state = "goggles"

/obj/item/clothing/glasses/sunglasses/sechud/toggle
	name = "HUD aviators"
	desc = "Modified aviator glasses that can be switched between HUD and darkened modes."
	icon_state = "sec_hud"
	off_state = "sec_flash"
	action_button_name = "Toggle Mode"
	toggleable = TRUE
	activation_sound = 'sound/effects/pop.ogg'

	var/on = TRUE
	var/hud_holder

/obj/item/clothing/glasses/sunglasses/sechud/toggle/Initialize()
	. = ..()
	hud_holder = hud

/obj/item/clothing/glasses/sunglasses/sechud/toggle/Destroy()
	qdel(hud_holder)
	hud_holder = null
	hud = null
	. = ..()

/obj/item/clothing/glasses/sunglasses/sechud/toggle/attack_self(mob/user)
	if(toggleable && !user.incapacitated())
		on = !on
		if(on)
			flash_protection = FLASH_PROTECTION_NONE
			src.hud = hud_holder
			to_chat(user, "You switch \the [src] to HUD mode.")
		else
			flash_protection = initial(flash_protection)
			src.hud = null
			to_chat(user, "You toggle \the [src]'s darkened mode on.")
		update_icon()
		sound_to(user, activation_sound)
		user.update_inv_glasses()
		user.update_action_buttons()

/obj/item/clothing/glasses/sunglasses/sechud/toggle/on_update_icon()
	if(on)
		icon_state = initial(icon_state)
	else
		icon_state = off_state