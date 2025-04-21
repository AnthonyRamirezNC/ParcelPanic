draw_self();
if (label != noone) {
	var l_x = x - sprite_get_width(label) / 2;
	var l_y = y - sprite_get_height(label) / 2;
	draw_sprite(label, 0, l_x, l_y);
}