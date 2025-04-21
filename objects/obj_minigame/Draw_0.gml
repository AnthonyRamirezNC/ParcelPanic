// Inherit the parent event
event_inherited();
if (box == noone) {
	exit;
}
if (box.attributes[index] == attribute) {
	exit;
}

if (time_left >= 0 and box != noone) {
	
	var pen_x = x - sprite_xoffset;
	var pen_y = y - sprite_yoffset + 64;
	draw_rectangle_color(
		pen_x + 1,
		pen_y,
		pen_x + sprite_width - 1,
		pen_y + sprite_height / 3,
		c_green,
		c_green,
		c_green,
		c_green,
		true
	);
	var complete_percent = (base_countdown_timer - time_left) / base_countdown_timer;
	draw_rectangle_color(
		pen_x,
		pen_y,
		pen_x + (sprite_width * complete_percent),
		pen_y + sprite_height / 3,
		c_green,
		c_green,
		c_green,
		c_green,
		false
	);
}