// Inherit the parent event
event_inherited();

enum State {
	Carrying,
	OnGround,
	OnConveyer,
	OnMiniGame,
}

state = noone;
player = noone;
on_what = noone;


// Attributes of the box
// 0 - color
attributes = ["none"];