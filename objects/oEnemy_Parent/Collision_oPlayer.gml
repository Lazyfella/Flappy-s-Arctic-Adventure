/// @description
if (!has_triggered) {
    has_triggered = true;
    target = other;
	oPlayer.HP -= 1;
	audio_play_sound(snd_nuh, 1, false);
	//ScreenShake(6,60);
    //other.state_animation = Animation.dead;
    //alarm_set(0, room_speed * 0.5);
	alarm[0] = 1;
	enemyHP -= 1;
}
if (oPlayer.HP <= 0) {
    // Reset the room
	audio_stop_all();
	audio_play_sound(snd_nuh, 1, false);
    room_restart();
	audio_play_sound(Sound_theme_music,1,1);
	//audio_play_sound(snd_wind,2,1);
	global.score = 0;
}