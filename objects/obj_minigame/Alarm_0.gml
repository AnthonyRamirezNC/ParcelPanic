if (attribute != noone and box != noone) {
	if (time_left <= 0) {
		box.attributes[index] = attribute;
		attribute = noone;
		time_left = 0;
	} else {
		time_left -= 1;
		alarm[0] = get_minigame_timer_interval();
	}
} else {
	attribute = noone;
	time_left = 0;
}
