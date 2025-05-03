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


function get_random_stamp() {
	var stamps = [
		Stamp.Blue,
		Stamp.Green,
		Stamp.Yellow
	];
	var random_stamp = irandom(array_length(stamps) - 1);
	return stamps[random_stamp];
}


function get_random_packaging() {
	var packaging = [
		Packaging.Foam,
		Packaging.BubbleWrap,
		Packaging.Peanuts,
	];
	var random_p = irandom(array_length(packaging) - 1);
	return packaging[random_p];
}

