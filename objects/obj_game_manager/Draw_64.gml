draw_text(0, 0 , string(quota));

//draw timer
var minutes = floor(quota_timer div 60);
var seconds = floor(quota_timer) mod 60;
var time_string = string(minutes) + ":" + string(seconds);
if seconds < 10 time_string = string(minutes) + ":0" + string(seconds);

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(16, 16, "Time Left: " + time_string);
draw_text(16, 32, "Score: " + string(obj_room_manager.current_level * 100));