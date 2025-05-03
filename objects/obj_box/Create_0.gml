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
movement_direction = 0;

played_shipping = false;
played_packing  = false;
played_labeling = false;


// Attributes of the box
// 0 - Shipping Method
attributes = [noone, noone, noone];