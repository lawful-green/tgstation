/mob/living/carbon/verb/give()
    set category = "IC"
    set name = "Give"
    set src in view(1)
    if(src == usr)
        usr << "<span class='warning'>You feel stupider, suddenly.</span>"
        return
    if(!ismonkey(src)&&!ishuman(src) || isalien(src) || src.stat || usr.stat || !src.client)
        usr << "<span class='warning'>[src.name] can't take anything</span>"
        return
    var/obj/item/I = usr.get_active_held_item()
    if(!I)
        usr << "<span class='warning'>You don't have anything in your active hand to give to [src].</span>"
        return
    if(!usr.canUnEquip(I))
        return
    var/list/empty_hands = get_empty_held_indexes()
    if(!empty_hands.len)
        usr << "<span class='warning'>[src]'s hands are full.</span>"
        return
    switch(alert(src,"[usr] wants to give you \a [I]?",,"Yes","No"))
        if("Yes")
            if(!I || !usr)
                return
            if(!Adjacent(usr))
                usr << "<span class='warning'>You need to stay in reaching distance while giving an object.</span>"
                src << "<span class='warning'>[usr] moved too far away.</span>"
                return
            if(I != usr.get_active_held_item())
                usr << "<span class='warning'>You need to keep the item in your active hand.</span>"
                src << "<span class='warning'>[name] seem to have given up on giving [I] to you.</span>"
                return
            if(src.lying || src.handcuffed)
                usr << "<span class='warning'>He is restrained.</span>"
                return
            empty_hands = get_empty_held_indexes()
            if(!empty_hands.len)
                src << "<span class='warning'>Your hands are full.</span>"
                usr << "<span class='warning'>Their hands are full.</span>"
                return
            if(!usr.dropItemToGround(I))
                return
            if(!put_in_hands(I))
                src << "<span class='warning'>You can't take [I], so [usr] gave up!</span>"
                usr << "<span class='warning'>[src] can't take [I]!</span>"
                return
            src.visible_message("<span class='notice'>[usr] handed [I] to [src].</span>")
        if("No")
            src.visible_message("<span class='warning'>[usr] tried to hand [I] to [src] but [src] didn't want it.</span>") 