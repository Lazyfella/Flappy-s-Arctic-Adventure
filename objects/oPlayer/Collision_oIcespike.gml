// check for collision with obj_icespike
 damage = 1;
    if (hp_current - damage >= 0) {
        hp_current -= damage;
    } else {
        hp_current = 0;
    }
    // update array with new image_index
    for (var hearts = 0; hearts < oHearts.maxHearts ; hearts++) {
        if (hp_current < oHearts.a_hearts[hearts, oHearts.e_hearts.full_value]) {
            oHearts.a_hearts[hearts, oHearts.e_hearts.index] = 1;
        }
        if (hp_current < oHearts.a_hearts[hearts, oHearts.e_hearts.halv_value]) {
            oHearts.a_hearts[hearts, oHearts.e_hearts.index] = 0;
        }
    }
instance_destroy(oIcespike);
if (hp_current ==0) { 
	room_restart();
	}
