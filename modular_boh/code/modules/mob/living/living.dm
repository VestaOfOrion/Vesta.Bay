/mob/living/Move(a, b, flag)
	if (buckled)
		return

	if(is_shifted)
		is_shifted = FALSE
		pixel_x = default_pixel_x
		pixel_y = default_pixel_y
	..()