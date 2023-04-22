
// Cache the maxHP value
var maxHP = oPlayer.maxHP;

// Calculate the number of full and empty hearts to draw
var numFullHearts = floor(oPlayer.HP);
//var numEmptyHearts = max(maxHP - numFullHearts, 0);


// Draw the full hearts
for (var i = 0; i < numFullHearts; i++) {
    draw_sprite(spr_hearts, 1, 50 + i * 32, 75);
}

// Draw the empty hearts
for (var i = numFullHearts; i < maxHP; i++) {
    draw_sprite(spr_hearts, 0, 50 + i * 32, 75);
}

// If the player has collected all fish and their maxHP has increased
if (oPlayer.maxHP > maxHP) {
    // Update the stored maxHP value
    maxHP = oPlayer.maxHP;

    // Draw the new heart
    draw_sprite(spr_hearts, 1, 50 + numFullHearts * 32, 75);
/*
    // Draw any remaining empty hearts
    for (var i = numFullHearts + 1; i < maxHP; i++) {
        draw_sprite(spr_hearts, 0, 25 + i * 32, 25);
    }
	¨*/
}
