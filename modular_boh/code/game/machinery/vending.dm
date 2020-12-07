/obj/machinery/vending/engivend
	name = "Engi-Vend"
	desc = "Spare tool vending. What? Did you expect some witty description?"
	icon_state = "engivend"
	icon_deny = "engivend-deny"
	icon_vend = "engivend-vend"
	vend_delay = 21
	base_type = /obj/machinery/vending/engivend
	req_access = list(list(access_atmospherics,access_engine_equip))
	products = list(/obj/item/clothing/glasses/meson = 2,/obj/item/device/multitool = 4,/obj/item/weapon/screwdriver/power = 3,/obj/item/device/geiger = 4,/obj/item/weapon/airlock_electronics = 10,/obj/item/weapon/module/power_control = 10,/obj/item/weapon/airalarm_electronics = 10,/obj/item/weapon/cell = 10,/obj/item/clamp = 10)
	contraband = list(/obj/item/weapon/cell/high = 3)
	premium = list(/obj/item/weapon/storage/belt/utility = 3)

/obj/machinery/vending/robotics
	name = "Robotech Deluxe"
	desc = "All the tools you need to create your own robot army."
	icon_state = "robotics"
	icon_deny = "robotics-deny"
	icon_vend = "robotics-vend"
	req_access = list(access_robotics)
	base_type = /obj/machinery/vending/robotics
	products = list(/obj/item/weapon/reagent_containers/food/drinks/bottle/oiljug = 5,
					/obj/item/stack/cable_coil = 4,/obj/item/device/flash/synthetic = 4,/obj/item/weapon/cell = 4,/obj/item/device/scanner/health = 3,
					/obj/item/weapon/scalpel = 1,/obj/item/weapon/circular_saw = 1,/obj/item/weapon/tank/anesthetic = 2,/obj/item/clothing/mask/breath/medical = 5,
					/obj/item/weapon/screwdriver = 2, /obj/item/device/robotanalyzer = 3, /obj/item/weapon/crowbar = 2, /obj/item/weapon/screwdriver/power = 1)
	contraband = list(/obj/item/device/flash = 2)
	premium = list(/obj/item/weapon/weldingtool/largetank = 2)