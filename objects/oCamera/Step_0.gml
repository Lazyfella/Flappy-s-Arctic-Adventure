/// @description
if (follow != noone)
{
// Calculate the x and y position to follow the player with a margin of half the screen width/height
xTo = clamp(follow.x - (camWidth * 0.5), 0, room_width - camWidth);
yTo = clamp(follow.y - (camHeight * 0.5), 0, room_height - camHeight);
}

// Smoothly move the camera towards the target position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

// Set the camera view position with a margin of half the screen width/height
camera_set_view_pos(view_camera[0], x, y);

// Make sure the view is always within the bounds of the room
camera_apply(view_camera[0]);
/*

if (follow != noone)
{
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo - x)/25;
y += (yTo - y)/25;

camera_set_view_pos(view_camera[0],x-(camWidth*0.5),y-(camHeight*0.5));