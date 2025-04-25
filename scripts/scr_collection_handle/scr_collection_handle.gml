function collect_box(box_attributes){
	/*
		attributes is an array containing all the attributes
		of the box that was just validly collected
	*/
	// both attributes and ticket_info[i] should have the same structure and order
	var number_of_tickets = array_length(obj_game_manager.tickets)
	
	// Loop through every ticket in
	for (var i = 0; i < number_of_tickets; i++) {
		// If there isn't a ticket at the index, don't check it
		if (obj_game_manager.tickets[i] == noone) {
			continue;
		}
		
		// If there is a ticket, test if it is equal to the boxes attributes
		if (box_ticket_equal(obj_game_manager.tickets[i], box_attributes)) {
			// Good job, you shipped at box, quota goes down by 1
			if (obj_game_manager.quota > 0) {
				obj_game_manager.quota -= 1;
			}
			
			// Now set a new ticket
			set_ticket(i);
			
			// Exit loop
			break;
		}
		
	}
	
}

function box_ticket_equal(ticket_attributes, box_attributes) {
	var ticket_length = array_length(ticket_attributes);
	if (ticket_length != array_length(box_attributes)) {
		return false;
	}
	
	for (var i = 0; i < ticket_length; i++) {
		
		// Only runs when an attribute doesn't match
		if (ticket_attributes[i] != box_attributes[i]) {
			return false;
		}
	}
	
	// This line only runs if all the attributes ended up being equal
	return true;
}