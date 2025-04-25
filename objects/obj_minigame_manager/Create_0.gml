enum Minigame {
	Shipping,
	Stamps
}

// add this functionality later if you want to implement multiple players
player = obj_player

//mouse active variable to check if player mouse is inside the minigame
mouse_active = false

// essentially the starting point value of minigame, can change in child if want?
status = minigame.box.attributes[minigame.index];

// While this object exist, the player is on a minigame
obj_player.p_on_minigame = true;




// Code for displaying view of minigame based on focus
#region
view_enabled = true;


// Create camera to view object_j (centered on it)
var bg_width = background_focus.sprite_width;
var bg_height = background_focus.sprite_height;

var bg_start_x = background_focus.x - background_focus.sprite_xoffset;
var bg_start_y = background_focus.y - background_focus.sprite_yoffset;


var camera_minigame = camera_create_view(bg_start_x, bg_start_y, bg_width, bg_height);
view_camera[1] = camera_minigame;
view_visible[1] = true;



// Get display dimensions
var scr_w = camera_get_view_width(view_camera[0]);
var scr_h = camera_get_view_height(view_camera[0]);

// Target scaling: fit 5/6 of the screen in either dimension
var max_w = round(scr_w * 5/6);
var max_h = round(scr_h * 5/6);


// Determine best uniform scale
var scale = min(max_w / bg_width, max_h / bg_height);

// Scaled viewport size
var view_w = floor(bg_width * scale);
var view_h = floor(bg_height * scale);

// Center on screen
var view_x = floor((scr_w - view_w) / 2);
var view_y = floor((scr_h - view_h) / 2);

// Apply to View 0
view_wport[1] = view_w;
view_hport[1] = view_h;
view_xport[1] = view_x;
view_yport[1] = view_y;


#endregion