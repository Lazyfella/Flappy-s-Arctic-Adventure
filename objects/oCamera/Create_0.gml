// Camera Properties
camWidth = 640;       // Width of the camera
camHeight = 360;      // Height of the camera
camMarginX = 10;     // Margin to maintain from the player on the x-axis
camMarginY = 10;      // Margin to maintain from the player on the y-axis

// Follow the player
follow = oPlayer;

// Initialize the camera position
x = follow.x - camWidth / 2;
y = follow.y - camHeight / 2;
