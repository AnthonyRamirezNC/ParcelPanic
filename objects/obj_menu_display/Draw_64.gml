if (open) {
	progress = lerp(progress, ta_width, .1);
	if (progress > ta_width) {
		progress = ta_width;
	}
	
} else {
	progress = lerp(progress, 0, .1);
	if (progress < 0) {
		progress = 0;
	}
}

var screen_w = display_get_gui_width();
var screen_h = display_get_gui_height();

var b_x1 = screen_w - b_width - progress;
var b_x2 = b_x1 + b_width;
var b_y1 = screen_h/2 - b_height/2;
var b_y2 = b_y1 + b_height;

draw_sprite(spr_menu_btn, 0, b_x1, b_y1);


var ta_x1 = b_x1 + b_width;
var ta_x2 = ta_x1 + ta_width;
var ta_y1 = screen_h/2 - ta_height/2;
var ta_y2 = ta_y1 + ta_height;

var xscale = ta_width / sprite_get_width(spr_menu);
var yscale = ta_height / sprite_get_height(spr_menu);

draw_sprite_ext(spr_menu, 0, ta_x1, ta_y1, xscale, yscale, 0, c_white, 1);

// Draw Tickets
var t_x1 = ta_x1 + outer_margin_x;
var t_x2 = t_x1 + ticket_width + horizontal_space;
var t_y1 = ta_y1 + outer_margin_y;
var t_y2 = t_y1 + ticket_height + vertical_space;
var t_y3 = t_y2 + ticket_height + vertical_space;

// Draw All 6 Tickets
draw_ticket(t_x1, t_y1, ticket_scale, 0);
draw_ticket(t_x1, t_y2, ticket_scale, 1);
draw_ticket(t_x1, t_y3, ticket_scale, 2);
draw_ticket(t_x2, t_y1, ticket_scale, 3);
draw_ticket(t_x2, t_y2, ticket_scale, 4);
draw_ticket(t_x2, t_y3, ticket_scale, 5);



var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
if (point_in_rectangle(mx, my, b_x1, b_y1, b_x2, b_y2) or
	point_in_rectangle(mx, my, ta_x1, ta_y1, ta_x2, ta_y2)) {
	open = true;
} else {
	open = false
}


