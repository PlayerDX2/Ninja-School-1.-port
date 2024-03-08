
image_xscale = ObPl.image_xscale

x = ObPl.x
y = ObPl.y


if (ObPl.sprite_index == plat){
	image_alpha = 1
	sprite_index = atak0
}
else if (ObPl.sprite_index == platd){
	image_alpha = 1
	sprite_index = atak1_1
}
else{
	image_alpha = 0
}

/*

image_xscale = ObPl.image_xscale

x = ObPl.x
y = ObPl.y

// таймеры

if (timer[1] > 0){
	timer[1]--
}

if (timer[2] > 0){
	timer[2]--
}


if (timer[0] > 0){
	timer[0]--
}
else if (timer[2] > 0){
	attak = true
	a1 = image_xscale
	timer[1] = room_speed * 1
}

// обработка атаки

if (timer[2] <= 0){
	attak = false
	
	if (timer[1] <= 0){
		a3 = 0
	}
}


if (attak == true){
	image_alpha = 1
	
	if (a3 == 1){
		sprite_index = atak0
	}
	else if (a3 == 2){
		sprite_index = atak1_1
	}
	
}
else{
	image_alpha = 0
}
	


