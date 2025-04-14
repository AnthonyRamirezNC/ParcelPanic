depth = -9999;
open = false;

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
outer_margin_x = 10;
outer_margin_y = 10;

horizontal_space = 10; // Space horizontally between tickets
vertical_space = 10; // Space vertically between tickets


// Calculate the size of the area needed
d_width =  ticket_width * 2 + outer_margin_x * 2 + horizontal_space; // Width of the rectangle
// Same as rect_w but with 3 rows
d_height = ticket_height * 3 + outer_margin_y * 2 + vertical_space * 2;

image_xscale = d_width / sprite_width;
image_yscale = d_height / sprite_height;


