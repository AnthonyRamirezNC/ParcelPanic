label = noone;

if (status_variable == Shipping.Airplane) {
	label = spr_a_label;
} else if (status_variable == Shipping.Truck) {
	label = spr_t_label;
} else if (status_variable == Shipping.Ship) {
	label = spr_b_label;
}