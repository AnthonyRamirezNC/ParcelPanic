depth = -9999;
open = false;
progress = 0;
step_speed = 2;

// Get camera positions


// get the width and height of the ticket sprites
ticket_base_width = sprite_get_width(spr_ticket);
ticket_base_height = sprite_get_height(spr_ticket);

// set the scale of them
ticket_scale = 1; // scale of the button sprites

// Calculate the ticket size
ticket_width = ticket_base_width * ticket_scale;
ticket_height = ticket_base_height * ticket_scale;

// Set space between stuff
// Space between box edge and start of ticket drawings
outer_margin_x = 30;
outer_margin_y = 30;

horizontal_space = 30; // Space horizontally between tickets
vertical_space = 30; // Space vertically between tickets


// Calculate the size of the area needed
ta_width =  ticket_width * 2 + outer_margin_x * 2 + horizontal_space; // Width of the rectangle
// Same as rect_w but with 3 rows
ta_height = ticket_height * 3 + outer_margin_y * 2 + vertical_space * 2;

// Get the width and height of the button
b_width = sprite_get_width(spr_menu_btn);
b_height = sprite_get_height(spr_menu_btn);

//image_xscale = d_width / sprite_width;
//image_yscale = d_height / sprite_height;


