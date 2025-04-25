// code for stop displaying minigame
// i think this is all i need right?
view_visible[1] = false;


obj_player.p_on_minigame = false;

if (minigame.box == noone) {
	show_debug_message("No box on minigame");
	return;
}

if (minigame.index == noone) {
	show_debug_message("Minigame missing index");
	return;
}
	
// same status as when it was placed on takes no time
if (status == minigame.attribute) {
	minigame.box.attributes[minigame.index] = status;
	minigame.time_left = 0;
} else { // if there is a completion status other than none, start timer to place attribute
	start_attribute_placement(minigame, status);
}


