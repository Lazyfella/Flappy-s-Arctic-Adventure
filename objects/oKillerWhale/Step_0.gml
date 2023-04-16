// Move the object up or down
if (goingUp) {
    y -= ySpeed;
    if (y <= yMax) {
        goingUp = false;
		image_angle = 180;
        image_xscale = -1;
    }
} else {
    y += ySpeed;
    if (y >= yMin) {
        goingUp = true;
		image_angle = 0;
        image_xscale = 1
    }
}
