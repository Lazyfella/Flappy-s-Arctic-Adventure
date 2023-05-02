/// @description
// Draw the score



// Draw the score
draw_set_font(fFont);
draw_set_color(c_orange);
draw_text(40, 125, string(global.score) + " / " + string(global.max_score));
draw_sprite(sFishGUI, 0, 135, 135);

