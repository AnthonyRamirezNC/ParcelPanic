//get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_enter);


//move through the menu
pos += down_key - up_key;

if( pos > op_length -1) {
	pos = 0;	
};
if (pos < 0) {
	pos = op_length -1	
};

//switch for utilizing options
if (accept_key) {
	switch (pos) {
		case 0:
			//start game
			break;
		case 1:
			//Credits
			break;
		case 2:
			//End Game
			game_end();
			break;
	};
};