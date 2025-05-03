function goto_next_level() {
	var in_game = false;
	var current_index = -1;
	for (var i = 0; i < array_length(obj_room_manager.level_rms); i++) {
		if (obj_room_manager.level_rms[i] == room) {
			in_game = true;
			current_index = i;
		}
	}
	
	if (!in_game and current_index == -1) {
		return;
	}
	
	// In last room
	obj_room_manager.current_level += 1;
	if (current_index == array_length(obj_room_manager.level_rms) - 1) {
		room_restart();
	} else {
		// Not in last room
		room_goto(obj_room_manager.level_rms[current_index + 1]);
	}
}


// Call this when time goes out but quota isn't met
function goto_fail() {
	room_goto(obj_room_manager.end_rm);
}

// In fail room
function goto_restart() {
	game_restart();
}

// 
function goto_start() {
	if (room != obj_room_manager.start_rm) {
		return;
	}
	obj_room_manager.current_level = 0;
	room_goto(obj_room_manager.level_rms[0]);
}