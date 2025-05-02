//draw menu bg
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height,0, c_white, 0.8);

//draw options
draw_set_font(fnt_menu);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for(var i = 0; i < op_length; i++) {
	var _c = c_white;
	if (pos == i) {
	_c = c_grey;	
	};
	draw_text_color(x+op_border, y+op_border + op_space* i , option[i], _c, _c, _c,_c, 1);	
};
_c = c_white;
draw_text_color(788, 825 , "Arrow Keys to Navigate & Enter to Select", _c, _c, _c,_c, 1);