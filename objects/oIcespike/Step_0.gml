event_inherited();
// Update position based on speed and direction
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

if (enemyHP <= 0) {
   instance_destroy()
}