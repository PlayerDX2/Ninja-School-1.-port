
y += ysp
x += xsp

if (place_meeting(x, y, ObPl)){
	if (ObPl.scmp < 6){
		ObPl.scmp++
		instance_destroy()
	}
}

if (place_meeting(x, y + ysp, ObGr) or place_meeting(x, y + ysp, Obbr)){
	ysp = -2
}
else{
	ysp++
	xsp += -xsp / 100
}

if (timer > 0){
	timer--
}
else{
	instance_destroy()
}
