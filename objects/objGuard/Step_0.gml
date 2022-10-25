
taunt_level = taunt_hear + taunt_see + taunt_smell;

if taunt_level >= taunt_cap[0] {
	
	if taunt_level < taunt_cap[2] {
		var highest_taunt = max(taunt_hear, taunt_see, taunt_smell);
		
		if highest_taunt = taunt_hear {
			//look direction direct
		} 
		if highest_taunt = taunt_see {
			//look direction direct
		} 
		if highest_taunt = taunt_smell {
			//look around but not direct (not so far)
		}
	} else if taunt_level < taunt_cap[3] {
		var highest_taunt = max(taunt_hear, taunt_see, taunt_smell);
		
		if highest_taunt = taunt_hear {
			//move direction
		} 
		if highest_taunt = taunt_see {
			//move direction 
		} 
		if highest_taunt = taunt_smell {
			//look around far
		}
	} else if taunt_level >= taunt_cap[3] {
		//move directly to target, if close enough they see you no matter what (fast)
	}
	
}
