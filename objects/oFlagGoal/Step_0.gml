if (move_step < 10) {
    move_step += move_speed; // Increase the current step by the move speed
    y = lerp(y, target_y, move_step/10); // Move the object towards the target Y position gradually
} else {
    y = target_y; // Snap to the target Y position
}