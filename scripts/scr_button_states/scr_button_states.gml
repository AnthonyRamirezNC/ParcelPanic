function scr_button_states(obj_to_spawn){
    // try to create each one without collisions
    for (var i = 0; i < 6; i++) {
        var ox = irandom_range(-64, 64);
        var oy = irandom_range(-64, 64);
        var tx = x + ox;
        var ty = y + oy;
		var inst = instance_create_layer(tx, ty, layer, obj_to_spawn);

        inst.image_angle = irandom_range(0, 359);
	}
}