function scr_player_movement(){

}

function scr_player_check_x(newx, object) {
	if (newx == 0) {
		return 0;
	}
	if (place_meeting(x + newx, y, object)) {
			newx = 0;
	}
	return newx;
}
function scr_player_check_y(newy, object) {
	if (newy == 0) {
		return 0;
	}
	if (place_meeting(x, y + newy, object)) {
			newy = 0;
	}
	return newy;
}