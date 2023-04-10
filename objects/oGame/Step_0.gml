/// @description Insert description here
// You can write your code in this editor
// Check if the maximum score has been reached, and show the message if it has
if (global.score >= global.max_score && !showed_message) {
  oPlayer.HP = oPlayer.maxHP;
  oPlayer.maxHP += 1;
  showed_message = true;
  audio_play_sound(snd_fishcollected,5,false,)
  //show_message("Max HP: " + string(oPlayer.maxHP));
}