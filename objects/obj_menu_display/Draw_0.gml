var cam_x = camera_get_view_x(view_camera[0]); // offset for camera view-x
var cam_y = camera_get_view_y(view_camera[0]); // offset for camera view-y

var screen_w = display_get_gui_width();
var screen_h = display_get_gui_height();

var newx = screen_w * (3/4);
var newy = screen_h / 2;

x = cam_x + newx;
y = cam_y + newy;
draw_self();