
if (place_meeting(x, y, ObWat)){
	if (isw == 0){
		isw = 0.5
	}	
	
	xsp = isw
	
	if (place_meeting(x, y - 12, ObPl)){
		ObPl.x += xsp
	}
}

ysp++

if (place_meeting(x, y + ysp, ObGr) or place_meeting(x, y + ysp, Obbr)){
	ysp = 0
}

if (place_meeting(x, y + ysp - 12, ObWat)){
	ysp = 0
}

if (place_meeting(x + 2, y, ObPl) or place_meeting(x - 2, y, ObPl)){
	if (isw == 0){
		xsp += ObPl.xsp
		use = true
	}
}
else{
	if (isw == 0){
		xsp = 0
	}
	
	use = false
}
if (place_meeting(x + xsp, y, ObGr) or place_meeting(x + xsp, y, Obbr)){
	if (isw != 0){
		isw = -isw
	}
	else{
		xsp = -xsp
		
		if (use){
			ObPl.xsp = 0
		}
	}
}

x += xsp
y += ysp
