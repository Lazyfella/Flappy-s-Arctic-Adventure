
// Check if the cold meter value is exactly 1000
if (hypometer == 1000) {
    // Draw the full sprite if the cold meter is full
    draw_sprite(sHypometerframes, 6, x, y);
}
else {
    // Calculate the percentage and frame index as before
    var percentage = clamp(hypometer / 1000, 0, 1);
    var num_frames = 7;
    var frame_index = floor(percentage * num_frames);
    
    // Draw the sprite using the calculated frame index
    draw_sprite(sHypometerframes, frame_index, x, y);
}
