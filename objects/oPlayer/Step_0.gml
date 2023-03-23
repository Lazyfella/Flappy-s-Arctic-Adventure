/// @description Insert description here
// You can write your code in this editor

//Get inputs
var _keyRight = keyboard_check(vk_right);
var _keyLeft = keyboard_check(vk_left);
var _keyJump = keyboard_check(vk_space);

//Work out where to move horizontally (This is setting the speed, might cause issues with other movement inpacts)
hsp = (_keyRight - _keyLeft) * hspWalk;

//Work out where to move vertically
vsp = vsp + grv;

//Work out if we should jump
if (canJump-- > 0) && (_keyJump)
{
	vsp = vspJump;
	canJump = 0;
}

//Collide and Move
if ( place_meeting(x + hsp, y, oWall))
{
	while (abs(hsp) > 0.1)
	{
		hsp *= 0.5;
		if (!place_meeting(x + hsp, y, oWall)) x += hsp;
	}
	hsp = 0;
}
x += hsp;

if (place_meeting(x, y + vsp, oWall))
{
	if (vsp > 0) canJump = 4;
	while (abs(vsp) > 0.1)
	{
		vsp *= 0.5;
		if (!place_meeting(x, y + vsp, oWall)) y += vsp;
	}
	vsp = 0
}
y += vsp;