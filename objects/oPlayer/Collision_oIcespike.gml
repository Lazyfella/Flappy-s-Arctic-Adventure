// check for collision with obj_icespike
 damage = 1;
    if (hp_current - damage >= 0) {
        hp_current -= damage;
    } else {
        hp_current = 0;
    }
    // update array with new image_index
    for (var hearts = 0; hearts < obj_hearts.maxHearts ; hearts++) {
        if (hp_current < obj_hearts.a_hearts[hearts, obj_hearts.e_hearts.full_value]) {
            obj_hearts.a_hearts[hearts, obj_hearts.e_hearts.index] = 1;
        }
        if (hp_current < obj_hearts.a_hearts[hearts, obj_hearts.e_hearts.halv_value]) {
            obj_hearts.a_hearts[hearts, obj_hearts.e_hearts.index] = 0;
        }
    }
instance_destroy(oIcespike);
if (hp_current ==0) { 
	room_restart();
	}
