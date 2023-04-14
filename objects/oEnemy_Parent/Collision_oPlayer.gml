/// @description
if (!has_triggered) {
    has_triggered = true;
    target = other;
	oPlayer.HP -= 1;
	audio_play_sound(snd_death, 1, false);
	//ScreenShake(6,60);
    //other.state_animation = Animation.dead;
    alarm_set(0, room_speed * 0.5);
	enemyHP -= 1;
}
if (oPlayer.HP <= 0) {
    // Reset the room
	audio_stop_all();
    room_restart();
}