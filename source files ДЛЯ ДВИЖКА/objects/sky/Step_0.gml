
if (ObPl.x > 360 and ObPl.x < room_width - 360){
	x = x + 0.5 + ObPl.xsp
}
else{
	x = x + 0.5
}

if (x - ObPl.x > 400 or x - ObPl.x < -800){
	x = ObPl.x - irandom_range(720, 360)
}

if (Suns.dn == 1){
	sprite_index = cl1
}
else{
	sprite_index = cl0
}
