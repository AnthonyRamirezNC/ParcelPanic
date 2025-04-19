randomize();

enum Shipping {
	Truck,
	Airplane,
	Ship
}

room_level = 0;
quota = 7;
taken_quota = quota;


tickets = [
	noone, noone,
	noone, noone,
	noone, noone
];

// get starting tickets 6
for (var i = 0; i < 6; i++) {
	set_ticket(i);
}
