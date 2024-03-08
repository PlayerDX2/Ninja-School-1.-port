
if (timer[2] > 0){
	timer[2]--
}

if (hp < 1 and death == false){
	if (ObPl.step == 3){
		if (ObPl.kul < 20 and ks == false){
			ks = true
			ObPl.kul += 1
		}
	}
	
	if (timer[2] == -10){
		timer[2] = room_speed * 0.6
	}
	
	sprite_index = m102

	sp = -0.2
	y += -5

	if (timer[2] != -10 and timer[2] < 1 and death == false){
		instance_create_depth(x, y, 0, ObMn)
		instance_create_depth(x, y, 0, ObMn)
		
		ObMn.scmn = 10
		ObPl.plexp += 15
		
		if (irandom_range(1, 8) == 1){
			instance_create_depth(x, y, 0, Obpt0)
		}
		if (irandom_range(1, 6) == 1){
			instance_create_depth(x, y, 0, Obpt1)
		}
		
		if (death == false){
			timer[4] = room_speed * 10
			death = true
		}
	}
	
}

if (timer[4] > 0 and death = true){
	image_alpha = 0
	sp = 0
	x = x
	y = y
	
	
	timer[4]--
}
else if (death == true){
	image_alpha = 1
	x = px
	y = py
	image_xscale = 1
	
	death = false
	
	hp = 100
	sp = 0.2
	dm = 0
	ks = false
	timer[2] = -10
	timer[0] = room_speed * 2
}

if (place_meeting(x + sp, y, ObPl) and hp > 0){
	ObPl.damages = room_speed * 0.1
	ObPl.uron = 0.5
	timer[3] = room_speed * 1
}

if (timer[0] > 0){
	timer[0]--
}
else if (hp > 0){
	sp = -sp
	image_xscale = -image_xscale
	timer[0] = room_speed * 2
}

ysp++

if (place_meeting(x, y + ysp, ObGr) or place_meeting(x, y + ysp, Obbr)){
	if (ysp > 0){
		ysp = 0
	}
}

if (place_meeting(x, y, ObAtak) and ObAtak.image_alpha == 1){
	if (sprite_index == m100 and hp > 0){
		instance_create_depth(x, y, 0, blood)
		dm = round(random_range(15, 25)) * ObPl.pllv
		hp -= dm
		timer[1] = room_speed * 0.5
		ysp = -5
	}
}

if (place_meeting(x, y, Opt)){
	if (sprite_index == m100 and hp > 0){
		instance_create_depth(x, y, 0, blood)
		Opt.xsp = 0
		dm = round(random_range(15, 25)) * ObPl.pllv / 2
		hp -= dm
		timer[1] = room_speed * 0.5
		ysp = -5
	}
}

if (timer[3] > 0){
	timer[3]--
	x = x
}
else{
	if (timer[1] < 1){
		x += sp
	}
}

if (timer[1] > 0 and hp > 0){
	sprite_index = m102
	timer[1]--
	x = x
}
else{
	sprite_index = m100
	if (timer[3] <= 0){
		x += sp
	}
}

y += ysp
