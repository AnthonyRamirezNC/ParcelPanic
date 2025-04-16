function scr_tickets(){

}

// set a new ticket in the game managing object at index i
function set_ticket(i) {
	obj_game_manager.tickets[i] = get_ticket();
}

function get_ticket() {
	if (obj_game_manager.quota <= 0) {
		return noone;
	}
	
	return ["none"];
}

function draw_ticket(ticket_x, ticket_y, ticket_scale, index) {
	var ticket_info = obj_game_manager.tickets[index];
	
	// Draw the ticket as long as it exists
	if (ticket_info != noone) {
		draw_sprite_ext(spr_ticket, 0, ticket_x, ticket_y, ticket_scale, ticket_scale, 0, c_white, 1);
	}
}



