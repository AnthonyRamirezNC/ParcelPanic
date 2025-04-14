function scr_player_movement(){

}

function scr_player_check_x(newx, object) {
	if (newx == 0) {
		return 0;
	}
	if (place_meeting(x + newx, y, object)) {
		var magnitude = sign(newx);
		newx = abs(newx);
			
		while (place_meeting(x + (newx * magnitude), y, object) and newx > 0) {
			newx -= 1;
		}
		newx = newx * magnitude;
			
	}
	return newx;
}
function scr_player_check_y(newy, object) {
	if (newy == 0) {
		return 0;
	}
	if (place_meeting(x, y + newy, object)) {
		var magnitude = sign(newy);
		newy = abs(newy);
			
		while (place_meeting(x, y + (newy * magnitude), object) and newy > 0) {
			newy -= 1;
		}
		newy = newy * magnitude;
	}
	return newy;
}