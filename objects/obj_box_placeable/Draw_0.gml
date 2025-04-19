draw_self();

if (obj_player.focus == id) {
	// Get the top left px origin
	var off_x = sprite_get_xoffset(sprite_index) * abs(image_xscale);
    var off_y = sprite_get_yoffset(sprite_index) * image_yscale;
	
	var base_x = round(x - off_x);
	var base_y = round(y - off_y);
	
	var spr_w = sprite_get_width(sprite_index) * abs(image_xscale);
    var spr_h = sprite_get_height(sprite_index) * image_yscale;
	
	
	var x1 = base_x;
    var x2 = base_x + spr_w - 1;
    var y1 = base_y;
    var y2 = base_y + spr_h - 1;
	
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
