
function open_minigame(minigame, player) {
	// do not enter minigame if minigame already has a current manager or
	// box is doesn't exist
	show_debug_message("Minigame_opened")
	if (minigame.current_manager != noone or minigame.box == noone) {
		return;
	}
	
	// Otherwise create an instance of a manager for that specific player
	minigame.current_manager = instance_create_layer(
		x, 
		y, 
		"Instances", 
		minigame.manager
	);
	

}


function exit_minigame(minigame) {
	// Early Exits if issues;
	
	if (minigame.current_manager == noone) {
		show_debug_message("No manager, how?");
		return;
	}
	
	show_debug_message("trying to exit minigame");
	instance_destroy(minigame.current_manager);
	minigame.current_manager = noone;
}

function start_attribute_placement(minigame, new_attribute) {
	show_debug_message("Starting attribute placement");
	minigame.time_left = minigame.base_countdown_timer;
	minigame.attribute = new_attribute;
	minigame.alarm[0] = get_minigame_timer_interval();
}

// the interval to which the timer updates
function get_minigame_timer_interval() {
	return game_get_speed(gamespeed_fps) / 2;
}

function place_box_on_minigame(minigame, box) {
	show_debug_message("placing box on minigame");
	if (minigame.box != noone or minigame.current_manager != noone) {
		show_debug_message("Couldn't place box on minigame")
		show_debug_message(string(minigame.box));
		show_debug_message(string(minigame.current_manager));
		return false;
	}
	box.state = State.OnMiniGame;
	box.x = minigame.x;
	box.y = minigame.y - 12;
	box.depth = minigame.depth - 1;
	box.on_what = minigame;
	minigame.box = box;
	minigame.attribute = box.attributes[minigame.index];
	open_minigame(minigame, obj_player);
	return true;
}

function pickup_box_off_minigame(minigame) {
	show_debug_message("Taking box off minigame")
	if (minigame.current_manager != noone) {
		// umm just destroy?
		show_debug_message("took box off minigame while playing minigame");
		exit_minigame(minigame);
	}
	if (minigame.time_left != 0) {
		show_debug_message("took box off while waiting");
	}

	minigame.attribute = noone;
	minigame.time_left = 0;
	minigame.box = noone;
}

