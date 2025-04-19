// Inherit the parent event
event_inherited();

// Movement
#region
var up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var down = keyboard_check(vk_down) or keyboard_check(ord("S"));
var left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var right = keyboard_check(vk_right) or keyboard_check(ord("D"));

var newx = 0;
var newy = 0;
if (up) {
	newy = -move_speed / sqrt(2);
	if (right) {
		newx = move_speed / sqrt(2);
		facing = 0;
	} else if (left) {
		newx = -move_speed / sqrt(2);
		facing = 2;
	} else {
		newy = -move_speed
		facing = 1;
	}
} else if (down) {
	newy = move_speed / sqrt(2);
	if (right) {
		newx = move_speed / sqrt(2);
		facing = 0;
	} else if (left) {
		newx = -move_speed / sqrt(2);
		facing = 2;
	} else {
		newy = move_speed
		facing = 3;
	}
} else {
	if (right) {
		newx = move_speed;
		facing = 0;
	} else if (left) {
		newx = -move_speed;
		facing = 2;
	}
}
// Prevent collisions
newx = scr_player_check_x(newx, obj_drawn_objects);
newy = scr_player_check_y(newy, obj_drawn_objects);
x += round(newx);
y += round(newy);
#endregion

// Focus and box focus
#region
if (carrying) {
	box_focus = noone;
	var nearest_focus = noone;
    var nearest_dist = drop_range;
	with (obj_box_placeable) {
		var dist = point_distance(other.x, other.y + 21, x, y);
        if (dist < other.drop_range && dist < nearest_dist)
        {
            nearest_focus = id;
            nearest_dist = dist;
        }
	}
	focus = nearest_focus;
	
} else {
	focus = noone;
	var nearest_focus = noone;
    var nearest_dist = pickup_range;
	with (obj_box) {
		var dist = point_distance(other.x, other.y + 21, x, y);
        if (dist < other.pickup_range && dist < nearest_dist)
        {
            nearest_focus = id;
            nearest_dist = dist;
        }
	}
	box_focus = nearest_focus;
}
#endregion


// Box interaction
#region
if (keyboard_check_pressed(vk_space) and !carrying) // or whatever your pickup key is
{
    if (box_focus != noone)
    {
		box = box_focus;
		carrying = true;
        with (box)
        {
            state = State.Carrying;
			player = other.id;
			on_what = noone;
        }
    }
} else if (keyboard_check_pressed(vk_space) and carrying and box != noone) {
	if (focus != noone) {
		// if the players focus is near something like a converor belt or mini game
		// Wow, a super hot switch statement
		switch (focus.object_index) {
			case obj_shipping:
				show_debug_message("On obj shipping")
			break;
			
			case obj_conveyorBeltEnter:
				box.state = State.OnConveyer;
				box.x = focus.x;
				box.y = focus.y - 12;
				box.on_what = focus;
				box.movement_direction = sign(focus.image_xscale);
			break;
		}
		
	} else {
		// Box is now on the ground
	
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
	// Box no longer attached to player
	box.player = noone;
	
	// Not carrying box anymore
	carrying = false;
	box = noone;
}
#endregion




