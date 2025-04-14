function scr_tickets(){

}

function get_ticket() {
	return ["blue"]
}

function draw_ticket(ticket_x, ticket_y, ticket_scale, index) {
	var ticket_info = obj_game_manager.tickets[index];
	draw_sprite_ext(spr_ticket, 0, ticket_x, ticket_y, ticket_scale, ticket_scale, 0, c_white, 1);
}



