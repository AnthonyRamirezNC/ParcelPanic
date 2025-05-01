if (state == State.Carrying and player != noone) {
	x = player.x;
	y = player.y - 50;
}


draw_self();
// Shipping Label Drawing code
#region
if (attributes[0] != noone) {
	var label = noone;
	switch (attributes[0]) {
		case Shipping.Airplane:
			label = spr_airplane_label;
		break;
		case Shipping.Truck:
			label = spr_truck_label;
		break;
		case Shipping.Ship:
			label = spr_ship_label;
		break;
	}
	
	if (label != noone) {
		draw_sprite_ext(
			label, 
			0, 
			x - sprite_xoffset, 
			y - sprite_yoffset,
			.5,
			.5,
			0,
			c_white,
			1
		);
	}
}
#endregion

#region
if (attributes[2] != noone) {
	var stamp = noone;
	switch (attributes[2]) {
		case Stamp.Blue:
			stamp = spr_stamp_blue;
		break;
		case Stamp.Green:
			stamp = spr_stamp_green;
		break;
		case Stamp.Yellow:
			stamp = spr_stamp_yellow;
		break;
	}
	
	if (stamp != noone) {
	draw_sprite_ext(
		stamp, 
		0, 
		x - sprite_xoffset + sprite_width/2, // shift to the right
		y - sprite_yoffset  + sprite_width/8,
		0.25,
		0.25,
		0,
		c_white,
		1
	);
	}
}
#endregion


// Focus Draw code
#region
if (obj_player.box_focus == id) {
	// Get the top left px origin
	var off_x = sprite_get_xoffset(sprite_index) * image_xscale;
    var off_y = sprite_get_yoffset(sprite_index) * image_yscale;
	
	var base_x = round(x - off_x);
	var base_y = round(y - off_y);
	
	var spr_w = sprite_get_width(sprite_index) * image_xscale;
    var spr_h = sprite_get_height(sprite_index) * image_yscale;
	
	var x1 = base_x - 1;
    var x2 = base_x + spr_w;
    var y1 = base_y - 1;
    var y2 = base_y + spr_h;
	
	var rec_color = c_white;
	var lin_width = 1;

    // Draw the rectangle outline
	// Top Line
	
	draw_line_width_color(x1 - 1, y1, x2, y1, lin_width, rec_color, rec_color);
	
	// Bottom Line
	draw_line_width_color(x1, y2, x2, y2, lin_width, rec_color, rec_color);
	
	// Left Line
	draw_line_width_color(x1, y1, x1, y2, lin_width, rec_color, rec_color);
	
	// Right Line
	draw_line_width_color(x2, y1, x2, y2, lin_width, rec_color, rec_color);

}
#endregion