
if (hp < 1 and death == false){
	if (timer[2] == -10){
		timer[2] = room_speed * 0.6
	}
	
	sprite_index = m202

	if (timer[2] != -10 and timer[2] < 1 and hp < 1){
		instance_create_depth(x, y, 0, ObMn)
		instance_create_depth(x, y, 0, ObMn)
		ObMn.scmn = 10
		ObPl.plexp += 85
		
		if (irandom_range(1, 5) == 1){
			instance_create_depth(x, y, 0, Obpt0)
		}
		if (irandom_range(1, 4) == 1){
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
	move_towards_point(x, y, 0)
	x = x
	y = y
	
	timer[4]--
}
else if (death == true){
	image_alpha = 1
	x = sx
	y = sy
	
	death = false
	
	hp = 250
	sp = 1
	dm = 0
	timer[2] = -10
	timer[0] = room_speed * 0.15
}

// atak
if (ObPl.x - x > 160 or ObPl.x - x < -160 or sprite_index == m202 or timer[3] > 0){
	if (timer[0] > 0){
		timer[0]--
	}
	else if (hp > 0){
		move_towards_point(sx + irandom_range(-200, 200), sy + irandom_range(-100, 100), 1)
		timer[0] = room_speed * 0.3
	}
}
else{
	move_towards_point(ObPl.x, ObPl.y, 1.5)
}


if (timer[2] > 0){
	timer[2]--
}

if (place_meeting(x + 1, y + 5, ObPl) and hp > 0){
	ObPl.damages = room_speed * 0.1
	ObPl.uron = 1
	timer[3] = room_speed * 1
}

if (place_meeting(x + 1, y + 1, ObAtak) and ObAtak.image_alpha == 1){
	if (sprite_index == m201 and hp > 0){
		instance_create_depth(x, y, 0, blood)
		dm = round(random_range(15, 25)) * ObPl.pllv
		hp -= dm
		timer[1] = room_speed * 0.5
	}
}

if (place_meeting(x, y, Opt)){
	if (sprite_index == m201 and hp > 0){
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
}

if (timer[1] > 0 and hp > 0){
	sprite_index = m202
	timer[1]--
	x = x
}
else if (hp > 0){
	sprite_index = m201
}

y += ysp
