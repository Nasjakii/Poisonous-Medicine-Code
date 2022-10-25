
scr_watch_reset();


//needs the Values of ObjLightControl
if !instance_exists(objLightControl) {
	instance_destroy(self);
}
