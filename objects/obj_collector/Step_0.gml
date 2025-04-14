event_inherited();
// Checks if this object is able to collect a box
var box = instance_place(x, y, obj_box);

// Check if collision, if not, exit
if (box == noone) {
	exit;
}
// Make sure box is actually on the conveyor, if not, exit
if (box.state != State.OnConveyer) {
	exit;
}

// We can assume box equals something and is on the conveyor, do color check
// remember, attributes[0] is color
if (box.attributes[0] == collection_color) {
	// It is on the correct conveyor, so call collect_box
	// pass in box attributes as needed
	collect_box(box.attributes);
}
instance_destroy(box);