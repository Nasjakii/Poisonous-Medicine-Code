//returns the sprite of the item
function scr_get_item_holding(){
	if global.item_holding != -1 {
		var spr_item = objKiller.global.item_holding;
		
		return spr_item;
	} else {
		return -1;
	}
			
}