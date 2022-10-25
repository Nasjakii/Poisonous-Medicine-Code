

scr_create_victim(true);


#region state dead

	state_dead = function() {
		instance_destroy(self);
	}

#endregion

#region state idle

	state_idle = function() {
		state = state_idle;
	}

#endregion


state = state_idle;