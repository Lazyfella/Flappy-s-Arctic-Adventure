/// @description 

// Destroy the collectable
instance_destroy();
audio_play_sound(snd_nom, 10, false);

// Add 1 to the player's score
global.score += 1;
