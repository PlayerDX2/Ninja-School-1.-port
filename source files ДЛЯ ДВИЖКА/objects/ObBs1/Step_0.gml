
// death
if (hp <= 0){
	if (ObPl.step == 20 and ist == false){
		ist = true
		ObPl.final = true
		instance_create_depth(x, y, 0, bbk)
	}
	
	if (timer[2] == -10){
		timer[2] = room_speed * 0.6
	}

	if (timer[2] != -10 and timer[2] < 1 and hp < 1){
		instance_create_depth(x, y, 0, ObMn)
		instance_create_depth(x, y, 0, ObMn)
		ObMn.scmn = 50000
		ObPl.plexp += 1000
		
		if (irandom_range(1, 2) == 1){
			instance_create_depth(x, y, 0, Obpt0)
		}
		if (irandom_range(1, 2) == 1){
			instance_create_depth(x, y, 0, Obpt1)
		}
		
		instance_destroy()
	}
	
}

if (timer[2] > 0){
	timer[2]--
}

// uron
if (place_meeting(x + sp, y + 1, ObAtak) and ObAtak.image_alpha == 1 and timer[1] <= 0){
	instance_create_depth(x, y, 0, blood)
	dm = irandom_range(15, 25) * ObPl.pllv
	hp -= dm
	timer[1] = room_speed * 0.5
}

if (timer[1] > 0 and hp > 0){
	timer[1]--
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


// atak
if (timer[4] > 0){
	move = 0
	
	if (!place_meeting(x, y - 12, ObWat)){
		xsp = 0
		ysp = 0
		
		if (timer[5] <= 0 and hp > 200){
			instance_create_depth(x, y, 0, obar)
			timer[5] = room_speed * 0.5
		}
		
		timer[4]--
	}
	else{
		ysp = -5
	}
}
else{
	if (move == 0){
		move = 3
	}
}

if (timer[5] > 0){
	timer[5]--
}

// up
if (move == 1){
	if (!place_meeting(x, y - 32, ObWat)){
		if (irandom_range(0, 1) == 1){
			instance_create_depth(x, y - 15, 0, obbu)
			instance_create_depth(x, y - 15, 0, obbu)
			instance_create_depth(x, y - 15, 0, obbu)
			instance_create_depth(x, y - 15, 0, obbu)
		}
		
		if (irandom_range(0,1) == 1){
			move = 2
		}
		else{
			timer[4] = room_speed * 3
		}
	}
	else{
		ysp = -5
	}
}

// left right
if (move == 2){
	if (sp == 0 or sp == 1 or sp == -1){
		sp = irandom_range(-3, 3)
	}
	
	if (place_meeting(x + sp, ObPl.y, ObPl)){
		if (y > 710){
			move = 1
		}
		if (y < 710){
			move = 3
		}
	}
	
	ysp = 0
}
else{
	sp = 0
}

// down
if (move == 3){
	if (y > 735){
		move = irandom_range(1, 2)
	}
	else{
		ysp += 0.1
	}
}

// scale
if (x < ObPl.x){
	image_xscale = 1
}
else{
	image_xscale = -1
}

// collision
if (place_meeting(x + sp, y, Obbr)){
	x -= sp * 2
	
	if (move == 2){
		move = 3
	}
	else if (move == 3){
		move = 1
	}
	else{
		move = 2
	}
}

if (place_meeting(x, y + ysp, Obbr)){
	if (ysp > 0){
		ysp = 0
	}
}
	

x += sp
y += ysp