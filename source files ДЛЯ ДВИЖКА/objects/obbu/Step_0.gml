
y += ysp
x += xsp

if (place_meeting(x, y, ObPl)){
	ObPl.damages = room_speed * 0.1
	ObPl.uron = 0.5
	instance_destroy()
}

if (place_meeting(x, y + ysp, Obbr) or y > room_height){
	instance_destroy()
}
else{
	ysp++
}
