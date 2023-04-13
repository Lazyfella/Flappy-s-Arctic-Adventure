event_inherited();
// Update position based on speed and direction
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy(self);
}