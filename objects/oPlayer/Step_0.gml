
// Get inputs
var _keyRight = keyboard_check(vk_right);
var _keyLeft = keyboard_check(vk_left);
var _keyJump = keyboard_check_pressed(vk_space);

if (_keyRight)
{
    sprite_index = sPlayer_right;
    image_xscale = 1;
}
else if (_keyLeft)
{
    sprite_index = sPlayer_right;
    image_xscale = -1;
}
else
{
    sprite_index = sPlayer_idle;
}

// Work out where to move horizontally
hsp += (_keyRight - _keyLeft) * hspWalk;
hsp *= 1 - friction; // Apply friction to horizontal movement

// Work out where to move vertically
vsp += grv;

// Work out if we should jump
if (canJump > 0 && _keyJump)
{
    vsp = vspJump;
    canJump = 0;
    jumpCount = 1;
	//sprite_index = sPlayer_jump; Not working well, sprites are dif sizes
	audio_play_sound(snd_jump,10,false);
}
else if (jumpCount == 1 && _keyJump)
{
    vsp = -6; //Double jump
    jumpCount = 2;
	audio_play_sound(snd_jump,10,false);
}

// Collide and move horizontally
if (place_meeting(x + hsp, y, oWall))
{
    while (abs(hsp) > 0.1)
    {
        hsp *= 0.5;
        if (!place_meeting(x + hsp, y, oWall)) x += hsp;
    }
    hsp = 0;
}
else
{
    x += hsp;
}

// Collide and move vertically
if (place_meeting(x, y + vsp, oWall))
{
    if (vsp > 0) canJump = 4;
    while (abs(vsp) > 0.1)
    {
        vsp *= 0.5;
        if (!place_meeting(x, y + vsp, oWall)) y += vsp;
    }
    vsp = 0;
}
else
{
    y += vsp;
}
/*
// Apply friction to vertical movement
if (canJump > 0)
{
    //vsp *= 1 - friction;
}
*/
if (abs(hsp) > maxHsp) {
    hsp = sign(hsp) * maxHsp;
}

