draw_sprite(spr_hearts, 0, 25, 15);

for (var i = 1; i <= oPlayer.maxHP; i++) {
    if (i <= oPlayer.HP) {
        draw_sprite(spr_hearts, 1, 25 + i * 32, 100);
    } else {
        break; // Exit the loop when the remaining hearts should not be displayed
    }
}

// If the player has collected all fish and their maxHP has increased
if (oPlayer.maxHP > maxHP) {
    maxHP = oPlayer.maxHP; // Update the stored maxHP value
    draw_sprite(spr_hearts, 0, 25 + maxHP * 32, 100); // Remove the rightmost heart
    draw_sprite(spr_hearts, 1, 25 + maxHP * 32, 100); // Draw the new heart
} else if (oPlayer.HP < maxHP) {
    draw_sprite(spr_hearts, 0, 25 + (maxHP) * 32, 100); // Remove the rightmost heart
}
