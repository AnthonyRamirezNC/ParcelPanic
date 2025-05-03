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
	
	var ticket = [get_random_shipping(), noone, noone]
	if (room == level_2) {
		ticket[1] = get_random_packaging();
	} else if (room == level_3) {
		ticket[1] = get_random_packaging();
		ticket[2] = get_random_stamp();
	}
	
	return ticket;
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
	var str = "";
	for (var i = 0; i < array_length(ticket_info); i++) {
		if (ticket_info[i] == noone) {
			continue;
		}
		str = get_ticket_info_name(ticket_info[i], i);
		draw_text_color(
			text_x, 
			text_y, 
			str, 
			c_black,
			c_black,
			c_black,
			c_black,
			1
		);
		text_y += 15;
	}
}

function get_ticket_info_name(ticket_id, i) {
	var ret_string = "null";
	switch (i) {
		case 0:
			ret_string = get_shipping_name(ticket_id);
		break;
		
		case 1:
			ret_string = get_packaging_name(ticket_id);
		break;
		
		case 2:
			ret_string = get_stamp_name(ticket_id);
		break;
		
		default:
		    ret_string = "not Found"
	}
	return ret_string;
}

function get_shipping_name(ticket_id) {
	var ret_string = "null";
	switch (ticket_id) {
		// Shipping Enums
		case Shipping.Airplane:
		    ret_string = "Airplane";
		break;

		case Shipping.Truck:
		    ret_string = "Truck";
		break;
		
		case Shipping.Ship:
		    ret_string = "Ship";
		break;
    

		default:
		    ret_string = "not Found"
	} 
	return ret_string
}


function get_packaging_name(ticket_id) {
	var ret_string = "null";
	switch (ticket_id) {
		case Packaging.Foam:
		    ret_string = "Foam";
		break;

		case Packaging.BubbleWrap:
		    ret_string = "Bubble Wrap";
		break;
		
		case Packaging.Peanuts:
		    ret_string = "Peanuts";
		break;
    

		default:
		    ret_string = "not Found"
	} 
	return ret_string
}



function get_stamp_name(ticket_id) {
	var ret_string = "null";
	switch (ticket_id) {
		// Shipping Enums
		case Stamp.Blue:
		    ret_string = "Blue";
		break;

		case Stamp.Green:
		    ret_string = "Green";
		break;
		
		case Stamp.Yellow:
		    ret_string = "Yellow";
		break;
    

		default:
		    ret_string = "not Found"
	} 
	return ret_string
}
