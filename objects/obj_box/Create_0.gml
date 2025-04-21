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


// Attributes of the box
// 0 - Shipping Method
// then 4 more minigame attributes
attributes = [Shipping.Airplane, noone, noone, noone, noone];