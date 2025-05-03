
// In start room and want to start game
if(keyboard_check_pressed(ord("S"))){
	goto_start();
}

// Goto Next Room/level
if(keyboard_check_pressed(ord("N"))){
	goto_next_level();
}

//Pause and unpause the timer
else if(keyboard_check_pressed(ord("Q"))){
	goto_restart();
}