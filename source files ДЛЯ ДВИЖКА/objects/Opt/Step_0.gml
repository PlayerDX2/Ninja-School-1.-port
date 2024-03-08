
if (xsp > 0){
	xsp -= 0.1
}
if (xsp < 0){
	xsp += 0.1
}

ysp += 0.1

if (place_meeting(x, y, Obbr)){
	xsp = 0
	ysp = 0
	image_index = 0
}

if (place_meeting(x, y, m000) or place_meeting(x, y, m300) or place_meeting(x, y, ObBs0) or place_meeting(x, y, ObM100) or place_meeting(x, y, ObM400) or place_meeting(x, y, om200) or place_meeting(x, y, om600) or place_meeting(x, y, om700) or place_meeting(x, y, om900)){
	//xsp = 0
	if (timer > 0.1){
		timer = room_speed * 0.1
	}
}

x += xsp
y += ysp

if (timer > 0){
	timer--
}
else{
	instance_destroy()
}

