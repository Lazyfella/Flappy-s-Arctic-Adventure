/// @description

// Draw the score
draw_sprite(sFish, 0, 25, 50);
draw_text(60, 54, string(global.score) + " / " + string(global.max_score));
show_debug_overlay(true);
