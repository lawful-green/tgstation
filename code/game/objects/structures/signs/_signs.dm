/obj/structure/sign
	icon = 'icons/obj/decals.dmi'
	anchored = TRUE
	opacity = 0
	density = FALSE
	layer = SIGN_LAYER
	max_integrity = 100
	armor = list("melee" = 50, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50)
	var/buildable_sign = 1 //unwrenchable and modifiable
	rad_flags = RAD_PROTECT_CONTENTS | RAD_NO_CONTAMINATE

/obj/structure/sign/portrait
	name = "portrait"
	desc = "A portrait of the glorious assistant."
	icon_state = "portrait"
	var/blesses = 1

/obj/structure/sign/portrait/penot
	desc = "Безумный взгл&#255;д человека на портрете буквально завораживает вас. Вы бы сходили с ним в дормы!"
	icon_state = "penot_1"

/obj/structure/sign/portrait/penot/attackby(var/obj/item/I, mob/living/user, params)
	if(istype(I,/obj/item/extinguisher))
		if(blesses > 0)
			user << "<span class='userdanger'>¤ Боги благовол&#255;т вам!</span>"
			new /obj/item/reagent_containers/food/drinks/drinkingglass/milky(user.loc)
			blesses--
		else
			user.visible_message("<span class='warning'>¤ Вам на миг почудилось, будто [user] ударило молнией. Боги не люб&#255;т жадин.</span>", \
								 "<span class='userdanger'>¤ Боги не оценили вашу жадность!</span>")
			playsound(loc, 'sound/effects/sparks1.ogg', 50, 1)
			user.adjustBrainLoss(5)
			user.apply_effect(3)

/obj/structure/sign/portrait/by3dpick
	desc = "Благородное ассистентское лицо взирает на вас с портрета. В вашей душе что-то помен&#255;лось и зовёт творить благие дела."
	icon_state = "by3dpick_1"

/obj/structure/sign/portrait/by3dpick/attackby(var/obj/item/I, mob/living/user, params)
	if(istype(I,/obj/item/extinguisher))
		if(blesses > 0)
			user << "<span class='userdanger'>¤ Боги благовол&#255;т вам!</span>"
			new /obj/item/toy/katana(user.loc)
			blesses--
		else
			user.visible_message("<span class='warning'>¤ Вам на миг почудилось, будто [user] ударило молнией. Боги не люб&#255;т жадин.</span>", \
								 "<span class='userdanger'>¤ Боги не оценили вашу жадность!</span>")
			playsound(loc, 'sound/effects/sparks1.ogg', 50, 1)
			user.adjustBrainLoss(5)
			user.apply_effect(3)

/obj/structure/sign/portrait/ruben_1
	desc = "Потёртый временем портрет. Вы едва различаете лицо ассистента, изображенного на нём."
	icon_state = "ruben_1"

/obj/structure/sign/portrait/ruben_1/attackby(var/obj/item/I, mob/living/user, params)
	if(istype(I,/obj/item/extinguisher))
		if(blesses > 0)
			user << "<span class='userdanger'>¤ Боги благовол&#255;т вам!</span>"
			new /obj/item/clothing/head/collectable/kitty(user.loc)
			blesses--
		else
			user.visible_message("<span class='warning'>¤ Вам на миг почудилось, будто [user] ударило молнией. Боги не люб&#255;т жадин.</span>", \
								 "<span class='userdanger'>¤ Боги не оценили вашу жадность!</span>")
			playsound(loc, 'sound/effects/sparks1.ogg', 50, 1)
			user.adjustBrainLoss(5)
			user.apply_effect(3)

/obj/structure/sign/portrait/rodger
	desc = "Красивое мужественное лицо сурово взирает на вас с картины. Этот человек внушает страх, уважение и необъ&#255;снимо сильную симпатию."
	icon_state = "portrait-rodger"

/obj/structure/sign/portrait/rodger/attackby(var/obj/item/I, mob/living/user, params)
	if(istype(I,/obj/item/extinguisher))
		if(blesses > 0)
			user << "<span class='userdanger'>¤ Боги благовол&#255;т вам!</span>"
			new /obj/item/reagent_containers/food/drinks/drinkingglass/milky(user.loc)
			blesses--
		else
			user.visible_message("<span class='warning'>¤ Вам на миг почудилось, будто [user] ударило молнией. Боги не люб&#255;т жадин.</span>", \
								 "<span class='userdanger'>¤ Боги не оценили вашу жадность!</span>")
			playsound(loc, 'sound/effects/sparks1.ogg', 50, 1)
			user.adjustBrainLoss(5)
			user.apply_effect(3)

/obj/structure/sign/portrait/ruben
	desc = "Какой н&#255;шечка! Томный образ этого оба&#255;тельного джентльмена делает ваши трусики насквозь мокрыми."
	icon_state = "portrait-ruben1"

/obj/structure/sign/portrait/ruben/attackby(var/obj/item/I, mob/living/user, params)
	if(istype(I,/obj/item/extinguisher))
		if(blesses > 0)
			user << "<span class='userdanger'>¤ Боги благовол&#255;т вам!</span>"
			new /obj/item/clothing/head/collectable/kitty(user.loc)
			blesses--
		else
			user.visible_message("<span class='warning'>¤ Вам на миг почудилось, будто [user] ударило молнией. Боги не люб&#255;т жадин.</span>", \
								 "<span class='userdanger'>¤ Боги не оценили вашу жадность!</span>")
			playsound(loc, 'sound/effects/sparks1.ogg', 50, 1)
			user.adjustBrainLoss(5)
			user.apply_effect(3)

/obj/structure/sign/portrait/bisher
	desc = "Гордый взгл&#255;д бывалого солдата, армейска&#255; выправка, мускулиста&#255; ше&#255;. Вы почти ощущаете запах напалма, источаемый портретом."
	icon_state = "portrait-bishehlop"

/obj/structure/sign/portrait/bisher/attackby(var/obj/item/I, mob/living/user, params)
	if(istype(I,/obj/item/extinguisher))
		if(blesses > 0)
			user << "<span class='userdanger'>¤ Боги благовол&#255;т вам!</span>"
			new /obj/item/clothing/glasses/eyepatch(user.loc)
			blesses--
		else
			user.visible_message("<span class='warning'>¤ Вам на миг почудилось, будто [user] ударило молнией. Боги не люб&#255;т жадин.</span>", \
								 "<span class='userdanger'>¤ Боги не оценили вашу жадность!</span>")
			playsound(loc, 'sound/effects/sparks1.ogg', 50, 1)
			user.adjustBrainLoss(5)
			user.apply_effect(3)

/obj/structure/sign/portrait/bisher/examine(mob/user)
	..()
	user.emote("salute")

/obj/structure/sign/basic
	name = "blank sign"
	desc = "How can signs be real if our eyes aren't real?"
	icon_state = "backing"

/obj/structure/sign/play_attack_sound(damage_amount, damage_type = BRUTE, damage_flag = 0)
	switch(damage_type)
		if(BRUTE)
			if(damage_amount)
				playsound(src.loc, 'sound/weapons/slash.ogg', 80, 1)
			else
				playsound(loc, 'sound/weapons/tap.ogg', 50, 1)
		if(BURN)
			playsound(loc, 'sound/items/welder.ogg', 80, 1)

/obj/structure/sign/attackby(obj/item/I, mob/user, params)
	if(I.tool_behaviour == TOOL_WRENCH && buildable_sign)
		user.visible_message("<span class='notice'>[user] starts removing [src]...</span>", \
							 "<span class='notice'>You start unfastening [src].</span>")
		I.play_tool_sound(src)
		if(I.use_tool(src, user, 40))
			playsound(src, 'sound/items/deconstruct.ogg', 50, 1)
			user.visible_message("<span class='notice'>[user] unfastens [src].</span>", \
								 "<span class='notice'>You unfasten [src].</span>")
			var/obj/item/sign_backing/SB = new (get_turf(user))
			SB.icon_state = icon_state
			SB.sign_path = type
			SB.setDir(dir)
			qdel(src)
		return
	else if(istype(I, /obj/item/pen) && buildable_sign)
		var/list/sign_types = list("Secure Area", "Biohazard", "High Voltage", "Radiation", "Hard Vacuum Ahead", "Disposal: Leads To Space", "Danger: Fire", "No Smoking", "Medbay", "Science", "Chemistry", \
		"Hydroponics", "Xenobiology")
		var/obj/structure/sign/sign_type
		switch(input(user, "Select a sign type.", "Sign Customization") as null|anything in sign_types)
			if("Blank")
				sign_type = /obj/structure/sign/basic
			if("Secure Area")
				sign_type = /obj/structure/sign/warning/securearea
			if("Biohazard")
				sign_type = /obj/structure/sign/warning/biohazard
			if("High Voltage")
				sign_type = /obj/structure/sign/warning/electricshock
			if("Radiation")
				sign_type = /obj/structure/sign/warning/radiation
			if("Hard Vacuum Ahead")
				sign_type = /obj/structure/sign/warning/vacuum
			if("Disposal: Leads To Space")
				sign_type = /obj/structure/sign/warning/deathsposal
			if("Danger: Fire")
				sign_type = /obj/structure/sign/warning/fire
			if("No Smoking")
				sign_type = /obj/structure/sign/warning/nosmoking/circle
			if("Medbay")
				sign_type = /obj/structure/sign/departments/medbay/alt
			if("Science")
				sign_type = /obj/structure/sign/departments/science
			if("Chemistry")
				sign_type = /obj/structure/sign/departments/chemistry
			if("Hydroponics")
				sign_type = /obj/structure/sign/departments/botany
			if("Xenobiology")
				sign_type = /obj/structure/sign/departments/xenobio

		//Make sure user is adjacent still
		if(!Adjacent(user))
			return

		if(!sign_type)
			return

		//It's import to clone the pixel layout information
		//Otherwise signs revert to being on the turf and
		//move jarringly
		var/obj/structure/sign/newsign = new sign_type(get_turf(src))
		newsign.pixel_x = pixel_x
		newsign.pixel_y = pixel_y
		qdel(src)
	else
		return ..()

/obj/item/sign_backing
	name = "sign backing"
	desc = "A sign with adhesive backing."
	icon = 'icons/obj/decals.dmi'
	icon_state = "backing"
	w_class = WEIGHT_CLASS_NORMAL
	resistance_flags = FLAMMABLE
	var/sign_path = /obj/structure/sign/basic //the type of sign that will be created when placed on a turf

/obj/item/sign_backing/afterattack(atom/target, mob/user, proximity)
	. = ..()
	if(isturf(target) && proximity)
		var/turf/T = target
		user.visible_message("<span class='notice'>[user] fastens [src] to [T].</span>", \
							 "<span class='notice'>You attach the sign to [T].</span>")
		playsound(T, 'sound/items/deconstruct.ogg', 50, 1)
		var/obj/structure/sign/S = new sign_path(T)
		S.setDir(dir)
		qdel(src)

/obj/item/sign_backing/Move(atom/new_loc, direct = 0)
	// pulling, throwing, or conveying a sign backing does not rotate it
	var/old_dir = dir
	. = ..()
	setDir(old_dir)

/obj/item/sign_backing/attack_self(mob/user)
	. = ..()
	setDir(turn(dir, 90))

/obj/structure/sign/nanotrasen
	name = "\improper Nanotrasen Logo"
	desc = "A sign with the Nanotrasen Logo on it. Glory to Nanotrasen!"
	icon_state = "nanotrasen"

/obj/structure/sign/logo
	name = "nanotrasen logo"
	desc = "The Nanotrasen corporate logo."
	icon_state = "nanotrasen_sign1"
