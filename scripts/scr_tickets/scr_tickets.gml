function scr_tickets(){

}

// set a new ticket in the game managing object at index i
function set_ticket(i) {
	obj_game_manager.tickets[i] = get_ticket();
}

function get_ticket() {
	if (obj_game_manager.taken_quota <= 0) {
		return noone;
	}
	obj_game_manager.taken_quota -= 1;
	
	return [
		get_random_shipping()
	];
}

function draw_ticket(ticket_x, ticket_y, ticket_scale, index) {
	var ticket_info = obj_game_manager.tickets[index];
	
	// Draw background indent for all tickets
	var tw = obj_menu_display.ticket_width;
	var th = obj_menu_display.ticket_height;
	var no_ticket_color = make_color_rgb(63, 38, 25);
	
	//Draw a rectangle representing area behind card
	draw_rectangle_color(
		ticket_x, 
		ticket_y, 
		ticket_x + tw - 1, 
		ticket_y + th - 1, 
		no_ticket_color, 
		no_ticket_color, 
		no_ticket_color, 
		no_ticket_color, 
		false
	);
	
	// Draw the ticket as long as it exists
	if (ticket_info == noone) {
		return;
	}
	
	draw_sprite_ext(
		spr_ticket, 
		0, 
		ticket_x, 
		ticket_y, 
		ticket_scale, 
		ticket_scale, 
		0, 
		c_white, 
		1
	);
	
	var text_x = ticket_x;
	var text_y = ticket_y;
	for (var i = 0; i < array_length(ticket_info); i++) {
		draw_text_color(
			text_x, 
			text_y, 
			string(ticket_info[i]), 
			c_black,
			c_black,
			c_black,
			c_black,
			1
		);
	}
}



