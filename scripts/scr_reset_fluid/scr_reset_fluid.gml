
function scr_reset_fluid(){
	
	objBrewControll.fillheight = 0;
	objBrewControll.mix_color = 0;
	
	with(objTestTube) {
		ds_list_clear(ingredient_list);
	}
}