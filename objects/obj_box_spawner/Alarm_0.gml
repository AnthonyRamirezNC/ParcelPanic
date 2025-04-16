var box = instance_create_layer(x, y, "Instances", obj_box);
with (box) {
	state = State.OnConveyer;
	on_what = instance_place(x, y, obj_conveyorBelt);
}
alarm[0] = game_get_speed(gamespeed_fps) * box_spawn_speed;
