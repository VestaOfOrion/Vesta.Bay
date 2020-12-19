/////////
// Sec
/////////

/obj/machinery/vending/security/accessory
	name = "SecTech - Accessory"
	desc = "A security accessory vendor."
//	product_ads = "Crack capitalist skulls!;Beat some heads in!;Don't forget - harm is good!;Your weapons are right here.;Handcuffs!;Freeze, scumbag!;Don't tase me bro!;Tase them, bro.;Why not have a donut?"
	icon_state = "sec"
	icon_deny = "sec-deny"
	icon_vend = "sec-vend"
	vend_delay = 14
	base_type = /obj/machinery/vending/security
	req_access = list(access_security)
	products = list(
		/obj/item/clothing/accessory/armguards = 6,
		/obj/item/clothing/accessory/armguards/navy = 6,
		/obj/item/clothing/accessory/armguards/green = 6,
		/obj/item/clothing/accessory/armguards/tan = 6,
		/obj/item/clothing/accessory/armguards/blue = 6,
		/obj/item/clothing/accessory/legguards = 6,
		/obj/item/clothing/accessory/legguards/navy = 6,
		/obj/item/clothing/accessory/legguards/green = 6,
		/obj/item/clothing/accessory/legguards/tan = 6,
		/obj/item/clothing/accessory/legguards/blue = 6,
		/obj/item/clothing/accessory/storage/holster/armpit = 6,
		/obj/item/clothing/accessory/storage/holster/hip = 6,
		/obj/item/clothing/accessory/storage/holster/thigh = 6,
		/obj/item/clothing/accessory/storage/pouches = 6,
		/obj/item/clothing/accessory/storage/pouches/large = 6,
		/obj/item/clothing/accessory/ubac = 6,
		/obj/item/clothing/accessory/armorplate = 6,
		/obj/item/clothing/accessory/armorplate/medium = 6,)
	contraband = list(/obj/item/clothing/accessory/storage/bandolier = 2,/obj/item/clothing/accessory/storage/drop_pouches/black = 2)
