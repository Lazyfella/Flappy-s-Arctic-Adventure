/// @description
if(! has_triggered){
	has_triggered = true;
	target = other;
	
	//other.state_animation = Animation.dead;
	
	alarm_set(0, room_speed * 0.5);
}