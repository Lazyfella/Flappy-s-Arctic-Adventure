/// @description
if (is_enabled) {
	is_enabled = false;
// Disable player movement and jumping
oPlayer.can_move = false;
oPlayer.can_jump = false;
oPlayer.hsp = 0;
oPlayer.vsp = 0;
oPlayer.hspWalk = 0;
oPlayer.canJump = 0;



audio_play_sound(snd_fishcollected, 10, false);

// Spawn a new oFlag instance
instance_create_depth(x + 32.5, y, depth + 1, oFlagGoal);

// Wait for 2 seconds before going to next room
oPlayer.alarm[0] = room_speed * 2;
}