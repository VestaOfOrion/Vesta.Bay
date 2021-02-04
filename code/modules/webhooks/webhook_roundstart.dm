/decl/webhook/roundstart
	id = WEBHOOK_ROUNDSTART

// Data expects a "url" field pointing to the current hosted server and port to connect on.
/decl/webhook/roundstart/get_message(var/list/data)
	. = ..()
	var/desc = "A new round is starting"
	if(data && data["url"])
		desc += " at byond://192.223.26.57:58844"
	desc += "."

	.["embeds"] = list(list(
		"title" = "Round starting.",
		"description" = desc,
		"color" = COLOR_WEBHOOK_DEFAULT
	))
