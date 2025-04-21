
// only open if:
// there is no current manager
// but there is currently a box
if (current_manager == noone and box != noone) {
	if (distance_to_object(obj_player) < obj_player.pickup_range) {
		open_minigame(self, obj_player);
	}
}