maxHearts = 5; 

    enum e_hearts {
        index,
        full_value,
        halv_value
    }
    for (var hearts = 0; hearts < maxHearts; hearts++) {
        a_hearts[hearts, e_hearts.index] = 2;
        a_hearts[hearts, e_hearts.full_value] = oPlayer.hp_max - (hearts * (oPlayer.hp_max / maxHearts));
        a_hearts[hearts, e_hearts.halv_value] = a_hearts[hearts, e_hearts.full_value] - (oPlayer.hp_max / 10);
    }