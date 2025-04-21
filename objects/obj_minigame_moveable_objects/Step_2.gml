if (bbox_right > background.bbox_right) {
	x -= bbox_right - background.bbox_right;
}

if (bbox_left < background.bbox_left) {
	x += background.bbox_left - bbox_left;
}

if (bbox_bottom > background.bbox_bottom) {
	y -= bbox_bottom - background.bbox_bottom;
}

if (bbox_top < background.bbox_top) {
	y += background.bbox_top - bbox_top;
}