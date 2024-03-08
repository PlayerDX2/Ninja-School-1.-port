
y += ysp
x += xsp

if (ObPl.step == 20){
	if (ObPl.final == true and tr == false){
		tr = true
		x = 685
		y = 280
	}
}

if (place_meeting(x, y, ObPl)){
	if (ObPl.step == 9){
		ObPl.step = 10
	}
	if (ObPl.step == 20){
		ObPl.step = 21
	}
	
	instance_destroy()
}

if (place_meeting(x, y + ysp, ObGr) or place_meeting(x, y + ysp, Obbr)){
	ysp = -2
	xsp = 0
}
else{
	ysp++
}
