
// death
if (hp <= 0){
	if (ObPl.step == 18){
		ObPl.step = 19
	}
	
	if (timer[2] == -10){
		timer[2] = room_speed * 0.6
	}
	
	sprite_index = bs0_3

	sp = -0.6
	y += -5

	if (timer[2] != -10 and timer[2] < 1 and hp < 1){
		instance_create_depth(x, y, 0, ObMn)
		instance_create_depth(x, y, 0, ObMn)
		ObMn.scmn = 50
		ObPl.plexp += 150
		
		if (irandom_range(1, 3) == 1){
			instance_create_depth(x, y, 0, Obpt0)
		}
		if (irandom_range(1, 5) == 1){
			instance_create_depth(x, y, 0, Obpt1)
		}
		
		instance_destroy()
	}
	
}

if (timer[2] > 0){
	timer[2]--
}

// walk
if (timer[0] <= 0){
	if (sp != 1 and sp != -1){
		sp = 1
	}
	
	sp = -sp
	timer[0] = room_speed * 2
}
else{
	timer[0]--
}

if (sp > 0){
	image_xscale = 1
}
else{
	image_xscale = -1
}

// uron
if (place_meeting(x + sp, y + 1, ObAtak) and ObAtak.image_alpha == 1){
	if (sprite_index == bs0_1 and hp > 0){
		instance_create_depth(x, y, 0, blood)
		dm = irandom_range(15, 25) * ObPl.pllv
		hp -= dm
		timer[1] = room_speed * 0.5
		ysp = -5
	}
}

if (place_meeting(x, y, Opt)){
	if (sprite_index == bs0_1 and hp > 0 and Opt.xsp != 0){
		instance_create_depth(x, y, 0, blood)
		Opt.xsp = 0
		dm = round(random_range(15, 25)) * ObPl.pllv / 2
		hp -= dm
		timer[1] = room_speed * 0.5
		ysp = -5
	}
}

if (timer[1] > 0 and hp > 0){
	sprite_index = bs0_3
	timer[1]--
}
else{
	sprite_index = bs0_1
}

// damage
if (place_meeting(x - sp, y, ObPl) and hp > 0){
	ObPl.damages = room_speed * 0.1
	ObPl.uron = 2
	timer[3] = room_speed * 1
}
if (timer[3] > 0){
	timer[3]--
}

// collision
if (place_meeting(x + sp, y - 5, ObGr) or place_meeting(x + sp, y, Obbr)){
	timer[0] = 0
}

if (place_meeting(x, y + ysp, ObGr) or place_meeting(x, y + ysp, Obbr)){
	if (ysp > 0){
		ysp = 0
	}
}
else{
	ysp++
}

// atak
if (!place_meeting(x + sp, y, Obbr) or !place_meeting(x + 100, y, ObPl)){
	if (place_meeting(x + 100, y, ObPl)){
		sp = 2
		timer[0] = room_speed * 4
	}
	else if(place_meeting(x - 100, y, ObPl)){
		sp = -2
		timer[0] = room_speed * 4
	}
}
else{
	timer[4] = room_speed * 2
	timer[0] = 0
}
if (timer[4] > 0){
	timer[4]--
}

if (timer[1] <= 0 and timer[3] <= 0 and timer[4] <= 0){
	x += sp
}
y += ysp