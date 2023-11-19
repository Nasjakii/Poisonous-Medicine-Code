


Item = function(_name, _sprite, _usable, _effect = "") constructor {
	name = _name;
	sprite = _sprite;
	usable = _usable;
	effect = _effect;
}

item_map = ds_map_create();
function add_item(name, sprite, usable, effect = "") {
	
	ds_map_add(objItemController.item_map, name, new Item(name, sprite, usable, effect));
}




add_item("Wranch", sprWranch, true);
add_item("Note", sprNote, true);
add_item("Syringe", sprSyringe, true);
add_item("Lamp", sprHandlamp, true);

add_item("Tartaremetic", sprTartaremetic, false);






