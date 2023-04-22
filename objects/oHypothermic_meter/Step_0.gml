/// @description Insert description here
// You can write your code in this editor
hypometer = max(0, floor(hypometer - 1));
if (hypometer <= 0 && show_hypothermic_message) {
    //show_message("Hypothermic meter is 0"); // show message when the energy reaches 0
    show_hypothermic_message = false; // set the variable to false so the message is only shown once
}


if (hypometer <= 700 && show_hypothermic_message) {
    audio_play_sound(snd_wind,2,1);
    show_hypothermic_message = false; // set the variable to false so the message is only shown once
}