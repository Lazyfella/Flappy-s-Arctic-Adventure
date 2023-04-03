// check for collision with obj_icespike
if (place_meeting(x, y, oIcespike)) {
    damage = irandom_range(5, 20);
    if (hp_current - damage >= 0) {
        hp_current -= damage;
    } else {
        hp_current = 0;
    }
    // update array with new image_index
    for (var hearts = 0; hearts < maxHearts; hearts++) {
        if (hp_current < a_hearts[hearts, e_hearts.full_value]) {
            a_hearts[hearts, e_hearts.index] = 1;
        }
        if (hp_current < a_hearts[hearts, e_hearts.halv_value]) {
            a_hearts[hearts, e_hearts.index] = 0;
        }
    }
}