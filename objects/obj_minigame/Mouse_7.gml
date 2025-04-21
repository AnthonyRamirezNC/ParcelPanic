
// only open if:
// there is no current manager
// but there is currently a box
if (current_manager == noone and box != noone) {
	open_minigame(self, obj_player);
}