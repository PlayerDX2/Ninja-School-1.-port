
//урон
if (damages > 0){
	sprite_index = plur
	alarm[0] = 5
}

// атака
if (bufat > 0 and damages <= 0){
	if (bufat == 1){
		sprite_index = plat
	}
	else if (bufat == 2){
		sprite_index = platd
	}	
	
	alarm[1] = 20
}

// сюрекен
if (timer[5] > 0 and damages <= 0){
	sprite_index = plat
	
	alarm[1] = 11
}

// прыжок
if (OnPt == false and bufat <= 0 and damages <= 0){
	if (ysp < 0){
		if (bfjm == 0){
			sprite_index = pljmv
			plmp -= 3
		}
		else{
			sprite_index = pljmup
		}
	}
	else if (ysp > 0){
		sprite_index = pljmdw
	}
	
	alarm[0] = 9
}

// присед
if (OnPt == true and sit != 0 and bufat <= 0 and damages <= 0){
	sprite_index = plsd
		
	if (timer[1] == 0){
		alarm[1] = 1
	}
		
	alarm[0] = 2
}

// бегущий
if (OnPt == true and xsp != 0 and damages <= 0 and bufat <= 0){
	sprite_index = SpPlr
	alarm[0] = 11
}

// статичный ниндзя
else if (OnPt == true and sit == 0 and bufat <= 0 and damages <= 0){
	sprite_index = SpPl
	alarm[0] = 3
}
