// Set camera settings
camWidth = 320; // Width of camera view
camHeight = 180; // Height of camera view
camMarginX = 10; // Horizontal margin
camMarginY = 10; // Vertical margin
camZoom = 0.7; // Zoom level


follow = oPlayer;

// Initialize the camera position
x = follow.x - camWidth / 2;
y = follow.y - camHeight / 2;

// Set camera zoom
camera_set_view_size(view_camera[0], camWidth / camZoom, camHeight / camZoom);

// Set camera view position
camera_set_view_pos(view_camera[0], x, y);

// Make sure the view is always within the bounds of the room
camera_apply(view_camera[0]);

/*
// Camera Properties
camWidth = 640;       // Width of the camera
camHeight = 360;      // Height of the camera
camMarginX = 10;     // Margin to maintain from the player on the x-axis
camMarginY = 10;      // Margin to maintain from the player on the y-axis

// Follow the player
follow = oPlayer;


