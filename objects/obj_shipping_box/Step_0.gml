

if (clicked) {
	var dx = (mouse_x - mouse_xprev);
	var dy = (mouse_y - mouse_yprev);

	x += dx;
	y += dy;

	mouse_xprev = mouse_x;
	mouse_yprev = mouse_y;
	exit;
}

// Falling
#region
if (place_meeting(x, y + 1, obj_shipping_barrier)) {
	gravity = 0;
	vspeed = 0;
} else if (place_meeting(x, y + vspeed, obj_shipping_barrier)) {
	gravity = 0;
	var magnitude = sign(vspeed);
	vspeed = abs(vspeed);
			
	while (place_meeting(x, y + (vspeed * magnitude), obj_shipping_barrier) and vspeed > 0) {
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