

room_level = 0;
tickets = [
	noone, noone,
	noone, noone,
	noone, noone
];

// get starting tickets 6
for (var i = 0; i < 6; i++) {
	tickets[i] = get_ticket();
}
