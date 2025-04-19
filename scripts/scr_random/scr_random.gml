function scr_random(){

}

function get_random_shipping() {
	var shipping_methods =  [
		Shipping.Airplane,
		Shipping.Truck,
		Shipping.Ship
	];
	var random_shipping = irandom(array_length(shipping_methods) - 1);
	return shipping_methods[random_shipping];
}