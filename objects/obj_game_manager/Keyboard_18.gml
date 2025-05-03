//increase the timer by 30 seconds
if(keyboard_check_pressed(vk_enter)){
	quota_timer += 30;
}

//Reset the timer
else if(keyboard_check_pressed(ord("X"))){
	quota_timer = 180.0;
}

//Pause and unpause the timer
else if(keyboard_check_pressed(ord("P"))){
	timer_active = !timer_active;
}