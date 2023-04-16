if (follow != noone)
{
    // Calculate the x and y position to follow the player with a margin of half the screen width/height
    var xTo = clamp(follow.x - (camWidth * 0.5), 0 + camMarginX, room_width - camWidth - camMarginX);
	var yTo = clamp(follow.y - (camHeight * 0.5) -30, 0 + camMarginY, room_height - camHeight - camMarginY);

    // Smoothly move the camera towards the target position
    x += (xTo - x) / 10;
    y += (yTo - y) / 10;

    // Set the camera view position with a margin of half the screen width/height
    camera_set_view_pos(view_camera[0], x, y);

    // Set camera zoom
    camera_set_view_size(view_camera[0], camWidth / camZoom, camHeight / camZoom);

    // Make sure the view is always within the bounds of the room
    camera_apply(view_camera[0]);
}


/*
// Calculate the position to follow the player with a margin of half the screen width/height
var xTo = clamp(follow.x - (camWidth * 0.5), 0 + camMarginX, room_width - camWidth - camMarginX);
var yTo = clamp(follow.y - (camHeight * 0.5) - 130, 0 + camMarginY, room_height - camHeight - camMarginY);

// Smoothly move the camera towards the target position
x += (xTo - x) / 15;
y += (yTo - y) / 15;

// Set the camera view position with a margin of half the screen width/height
camera_set_view_pos(view_camera[0], x, y);

// Make sure the view is always within the bounds of the room
camera_apply(view_camera[0]);
