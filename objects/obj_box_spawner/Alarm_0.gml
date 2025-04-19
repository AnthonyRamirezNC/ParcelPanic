var box = instance_create_layer(x, y, "Instances", obj_box);
with (box) {
	state = State.OnConveyer;
	on_what = instance_place(x, y, obj_conveyorBelt);
	movement_direction = sign(on_what.image_xscale);
}
alarm[0] = game_get_speed(gamespeed_fps) * box_spawn_speed;

show_debug_message(string(display_get_gui_height()));