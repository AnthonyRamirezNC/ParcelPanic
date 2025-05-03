randomize();


quota = obj_room_manager.start_quota + obj_room_manager.current_level;
taken_quota = quota;

quota_timer = 240.0;
global.game_time = quota_timer;
timer_active = true

tickets = [
	noone, noone,
	noone, noone,
	noone, noone
];

// get starting tickets 6
for (var i = 0; i < 6; i++) {
	set_ticket(i);
}
