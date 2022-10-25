//returns the sprite of the item
function scr_get_item_holding(){
	if objKiller.item_holding != -1 {
		var spr_item = objKiller.item_holding;
		
		return spr_item;
	} else {
		return -1;
	}
			
}