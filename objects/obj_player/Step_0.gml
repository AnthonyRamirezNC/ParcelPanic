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
x += newx;
y += newy;
#endregion

// Focus
#region
if (carrying) {
	var nearest_focus = noone;
    var nearest_dist = drop_range;
	with (obj_box_placeable) {
		var dist = point_distance(other.x, other.y, x, y);
        if (dist < other.drop_range && dist < nearest_dist)
        {
            nearest_focus = id;
            nearest_dist = dist;
        }
	}
	focus = nearest_focus;
	
}
#endregion


// Box interaction
#region
if (keyboard_check_pressed(vk_space) and !carrying) // or whatever your pickup key is
{
    var nearest_box = noone;
    var nearest_dist = pickup_range;

    // Loop through all boxes
    with (obj_box)
    {
        var dist = point_distance(other.x, other.y, x, y);
        if (dist < other.pickup_range && dist < nearest_dist)
        {
            nearest_box = id;
            nearest_dist = dist;
        }
    }

    // Pick up the nearest one
    if (nearest_box != noone)
    {
		box = nearest_box;
		carrying = true;
        with (nearest_box)
        {
            state = State.Carrying;
			player = other.id;
        }
    }
} else if (keyboard_check_pressed(vk_space) and carrying and box != noone) {
	if (focus != noone) {
		// if the players focus is near something like a converor belt or mini game
		// assume conveyor belt, as minigames have yet to be added
		box.state = State.OnConveyer;
		box.x = focus.x;
		box.y = focus.y + 10;
		
	} else {
		// Box is now on the ground
		box.state = State.OnGround;
	
		// Set position on the ground
		if (facing == 0) {
			box.x = x + 64
			box.y = y + sprite_height/2 - obj_box.sprite_height/2;
		} else if (facing == 1) {
			box.x = x;
			box.y = box.y + 10;
		} else if (facing == 2) {
			box.x = x - 64
			box.y = y + sprite_height/2 - obj_box.sprite_height/2;
		} else {
			box.x = x;
			box.y = y + 64;
		}
	}
	// Box no longer attached to player
	box.player = noone;
	
	// Not carrying box anymore
	carrying = false;
	box = noone;
}
#endregion




