if (point_in_rectangle(
		mouse_x, 
		mouse_y, 
		background_focus.bbox_left, 
		background_focus.bbox_top,
		background_focus.bbox_right,
		background_focus.bbox_bottom
	)) {
	mouse_active = true;
} else {
	mouse_active = false;
}