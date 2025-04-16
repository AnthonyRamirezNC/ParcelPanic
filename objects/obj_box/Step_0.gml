// Inherit the parent event
event_inherited();

if (state == State.Carrying and player != noone) {
	depth = player.depth - 20;
	exit;
}


if (state == State.OnConveyer) {
	x = x - 1;
	if (on_what != noone) {
		depth = on_what.depth - 1;
	}
}

if (state == State.OnConveyer and !place_meeting(x, y, obj_conveyorBelt) and !place_meeting(x, y, obj_conveyorBeltEnter)) {
	state = State.OnGround;
	on_what = noone;
}