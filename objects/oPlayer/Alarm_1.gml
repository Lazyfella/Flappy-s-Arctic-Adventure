/// @description Insert description here
// You can write your code in this editor

instance_destroy(oCamera);
instance_destroy(oHypothermic_meter);
instance_destroy(oPlayer);
instance_destroy(oGame);

room_goto(r_endMenu);

// Enable player movement and jumping
can_move = true;
can_jump = true;

audio_stop_all();

