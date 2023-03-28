timer--;

if (timer <= 0 && spawns < spawnsmax) {
	instance_create_layer(x,y, "Instances", oIcespike);
	timer = time;
	spawns++;
}