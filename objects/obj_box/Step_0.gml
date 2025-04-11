// Inherit the parent event
event_inherited();

if (state == State.Carrying and player != noone) {
	x = player.x;
	y = player.y - 50;
	depth = player.depth;
	exit;
}


if (state == State.OnConveyer) {
	x = x - 1;
}

if (state == State.OnConveyer and !place_meeting(x, y, obj_conveyorBelt) and !place_meeting(x, y, obj_conveyorBeltEnter)) {
	state = State.OnGround;
}