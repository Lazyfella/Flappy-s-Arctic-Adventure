sprWidth = sprite_get_width(spr_hearts);
    startX = (room_width / 2) + (sprWidth * 2.5);
    startY = sprite_get_height(spr_hearts);

    for (var hearts = 0; hearts < maxHearts; hearts++) {
        image = a_hearts[hearts, e_hearts.index];
        xx = startX - (sprWidth * hearts);
        draw_sprite(spr_hearts, image, xx, startY); 
    }