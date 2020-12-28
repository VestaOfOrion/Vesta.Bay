/obj/item/projectile/bullet/rcr
	name ="incendiary shell"
	icon_state= "rod"
	damage_type = BURN
	damage = 95
	armor_penetration = 65 //not 100, because recoilless rifles don't have that high of a velocity
	damage_flags = DAM_EDGE | DAM_DISPERSED | DAM_EXPLODE

	on_hit(var/atom/target, var/blocked = 0)
		explosion(target, 1, 6, 12)
		return 1

/obj/item/projectile/bullet/rifle/military/sec
	damage = 40 //higher damage
	armor_penetration = 5 //much worse pen - frangible bullets

/obj/item/projectile/bullet/sabot
	name = "sabot"
	icon_state= "rod"
	fire_sound = 'sound/weapons/gunshot/shotgun.ogg'
	damage = 35
	armor_penetration = 80
	damage_flags = DAM_EDGE

/obj/item/projectile/bullet/pistol/large
	fire_sound = 'sound/weapons/gunshot/revolver_1.ogg'
	damage = 40
	distance_falloff = 2.5
	armor_penetration = 15

/obj/item/projectile/bullet/rifle/military/large
	fire_sound = 'modular_boh/sounds/weapons/gunshot/hornet.ogg'
	damage = 45
	armor_penetration = 30
	distance_falloff = 0.50

obj/item/projectile/bullet/pistol/strong/rubber
	fire_sound = 'sound/weapons/gunshot/gunshot_strong.ogg'
	name = "less than lethal bullet"
	damage_flags = 0
	damage = 10
	agony = 40
	embed = 0
