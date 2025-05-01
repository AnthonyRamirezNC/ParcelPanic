

if (!instance_exists(manager)) {
	exit;
}

var new_status = instance_place(x, y, obj_stamp_complete_area);
if (new_status != noone) {
	manager.status = new_status.status_variable;
} else {
	manager.status = noone;
}

if (!mouse_check_button(mb_left)) {
	clicked = false;
}

if (!manager.mouse_active) {
	clicked = false;
}

if (clicked) {
	var dx = (mouse_x - mouse_xprev);
	var dy = (mouse_y - mouse_yprev);
	
	// check overlap with barriers to make sure player cant
	// drag over them
	if (place_meeting(x + dx, y + dy, obj_stamp_barrier)) {	
		// code for x
		var new_dx = dx;
		var magnitude = sign(new_dx);
		new_dx = abs(new_dx);
		while (place_meeting(x + (new_dx * magnitude), y, obj_stamp_barrier) and new_dx > 0) {
			new_dx -= 1;
		}
		new_dx = new_dx * magnitude;
		x += new_dx;
		
		var new_dy = dy;
		magnitude = sign(new_dy);
		new_dy = abs(new_dy);
		while (place_meeting(x, y + (new_dy * magnitude), obj_stamp_barrier) and new_dy > 0) {
			new_dy -= 1;
		}
		new_dy = new_dy * magnitude;
		y += new_dy;
	} else {
		x += dx;
		y += dy;
	}
	mouse_xprev = mouse_x;
	mouse_yprev = mouse_y;
	
	exit;
}

// Falling
#region
if (place_meeting(x, y + 1, obj_stamp_barrier)) {
	gravity = 0;
	vspeed = 0;
} else if (place_meeting(x, y + vspeed, obj_stamp_barrier)) {
	gravity = 0;
	var magnitude = sign(vspeed);
	vspeed = abs(vspeed);
			
	while (place_meeting(x, y + (vspeed * magnitude), obj_stamp_barrier) and vspeed > 0) {
		vspeed -= 1;
	}
	vspeed = vspeed * magnitude;
} else {
	gravity = 0.25;
}
if (vspeed > 12) {
	vspeed = 12;
}
#endregion