if (bubble_pressed) {
	scr_button_states(obj_bubble);
	obj_packaging_manager.status = Packaging.BubbleWrap
    bubble_pressed = false;
}

if (foam_pressed) {
	scr_button_states(obj_foam);
	obj_packaging_manager.status = Packaging.Foam
    foam_pressed = false;
}

if (peanut_pressed) {
	scr_button_states(obj_peanut);
	obj_packaging_manager.status = Packaging.Peanuts
    peanut_pressed = false;
}