var shader = layer_get_shader(layer_get_id("ColdEffect"));
    if (shader) {
        var intensity = (700 - hypometer) / 700;
        var uniform = shader_get_uniform(shader, "u_color");
        shader_set_uniform_f(uniform, intensity, intensity, intensity);
	}
hypometer = max(0, floor(hypometer - 1));
if (hypometer <= 0 && show_hypothermic_message) {
    //show_message("Hypothermic meter is 0"); // show message when the energy reaches 0
    show_hypothermic_message = false; // set the variable to false so the message is only shown once
}

if (hypometer <= 700 && show_hypothermic_message) {
    //audio_play_sound(snd_wind,2,1);
    show_hypothermic_message = false; // set the variable to false so the message is only shown once
    layer_enable_fx("ColdEffect", true); // enable the effect
    layer_enable_fx("ColdEffectBlur", true);
}