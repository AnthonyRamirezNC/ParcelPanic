

if (box != noone) {
	time_left -= 1;
	if (time_left <= 0) {
		box.attributes[index] = attribute;
		time_left = 0;
	} else {
		alarm[0] = get_minigame_timer_interval();
	}
} else {

	time_left = 0;
}
