// Update position based on speed and direction
event_inherited();
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Check for collision with walls
if (place_meeting(x + lengthdir_x(speed, direction), y, oWall)) {
    // Reverse direction if colliding with a wall
    direction = 180 - direction;
}