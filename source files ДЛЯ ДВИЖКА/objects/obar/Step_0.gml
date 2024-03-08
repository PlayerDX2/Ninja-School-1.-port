
x += xsp

if(xsp > 0){
	image_xscale = 1
}
else{
	image_xscale = -1
}

if (place_meeting(x, y, ObPl)){
	ObPl.damages = room_speed * 0.1
	ObPl.uron = 1
	instance_destroy()
}

if (place_meeting(x + xsp, y, ObAtak) and ObAtak.image_alpha == 1){
	xsp = -xsp
}

if (place_meeting(x, y, Obbr)){
	instance_destroy()
}
