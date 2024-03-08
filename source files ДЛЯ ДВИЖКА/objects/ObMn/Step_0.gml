
y += ysp
x += xsp

if (place_meeting(x, y, ObPl)){
	if (sprite_index == dm0){
		ObPl.plmn += scmn
	}
	else if (sprite_index == dm1){
		ObPl.plmn += scmn * 4
	}
	else{
		ObPl.plmn += scmn * 6
	}
	
	instance_destroy()
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
