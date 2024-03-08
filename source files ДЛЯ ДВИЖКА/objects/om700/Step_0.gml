
if (hp <= 0){
	if (ObPl.step == 6){
		if (ObPl.kmn < 20 and ks == false){
			ks = true
			ObPl.kmn += 1
		}
	}
	
	instance_create_depth(x, y, 0, ObMn)
	instance_create_depth(x, y, 0, ObMn)
	ObMn.scmn = 30
	ObPl.plexp += 100
	instance_destroy()
}

if (place_meeting(x, y, ObAtak) and ObAtak.image_alpha == 1){
	if (sprite_index == m700){
		dm = round(random_range(15, 25)) * ObPl.pllv
		hp -= dm
		timer = room_speed * 0.2
	}
}

if (place_meeting(x, y, Opt)){
	if (sprite_index == m700){
		dm = round(random_range(15, 25)) * ObPl.pllv / 2
		hp -= dm
		timer = room_speed * 0.5
	}
}

if (timer > 0 and hp > 0){
	sprite_index = m712
	image_xscale = ObPl.image_xscale
	timer--
}
else{
	sprite_index = m700
}
