function scr_player_movement(){

}

function scr_player_check_x(newx, object) {
	if (newx == 0) {
		return 0;
	}
	if (place_meeting(x + newx, y, object)) {
		var magnitude = sign(newx);
		newx = abs(newx);
			
		while (place_meeting(x + (newx * magnitude), y, object) and newx > 0) {
			newx -= 1;
		}
		newx = newx * magnitude;
			
	}
	return newx;
}
function scr_player_check_y(newy, object) {
	if (newy == 0) {
		return 0;
	}
	if (place_meeting(x, y + newy, object)) {
		var magnitude = sign(newy);
		newy = abs(newy);
			
		while (place_meeting(x, y + (newy * magnitude), object) and newy > 0) {
			newy -= 1;
		}
		newy = newy * magnitude;
	}
	return newy;
}


function set_box_on_ground(box) {
	// Set position on the ground
	with (box) {
		// Box is now on ground
		state = State.OnGround;
			
		// get y ground pos
		var l_r_ground = other.y + other.sprite_height/2 - obj_box.sprite_height/2;
		if (other.facing == 0 and !place_meeting(other.x + 64, l_r_ground, obj_drawn_objects)) {
			x = other.x + 64
			y = l_r_ground;
		} else if (other.facing == 1 and !place_meeting(other.x, other.y - 40, obj_drawn_objects)) {
			x = other.x;
			y = other.y - 40;
		} else if (other.facing == 2 and !place_meeting(other.x - 64, l_r_ground, obj_drawn_objects)) {
			x = other.x - 64
			y = l_r_ground;
		} else if (other.facing == 3 and !place_meeting(other.x, other.y + 64, obj_drawn_objects)) {
			x = other.x;
			y = other.y + 64;
		} else {
			x = other.x;
			y = l_r_ground - (other.bbox_bottom - other.bbox_top);
		}
			
	}
}

