xmove = keyboard_check(ord("D")) - keyboard_check(ord("A"))
sit = keyboard_check(ord("S"))
jm = keyboard_check_pressed(vk_space)
IsGr = place_meeting(x, y + 1, ObGr)
isbr = place_meeting(x, y + 1, Obbr)
IsWt = place_meeting(x, y + 1, ObWat)

// save
if (saveac == true){
	map = room
	
	ini_open("saveg.ini")
	
	ini_write_real("plstat", "plhp", plhp)
	ini_write_real("plstat", "plmp", plmp)
	ini_write_real("plstat", "exp", plexp)
	ini_write_real("plstat", "plmn", plmn)
	ini_write_real("plstat", "pllv", pllv)
	ini_write_real("plstat", "schp", schp)
	ini_write_real("plstat", "scmp", scmp)
	ini_write_real("plstat", "map", map)
	
	ini_close()
	
	ini_open("savj.ini")

	ini_write_real("statsj", "kul", kul)
	ini_write_real("statsj", "kos", kos)
	ini_write_real("statsj", "kmn", kmn)

	ini_write_string("statsj", "qt", qt)
	ini_write_real("statsj", "step", step)
	ini_write_real("statsj", "inw", inw)
	ini_write_real("statsj", "tj", tj)
	ini_write_real("statsj", "t1", t1)
	ini_write_real("statsj", "t2", t2)
	ini_write_real("statsj", "t3", t3)
	ini_read_real("statsj", "final", final)
	ini_write_real("statsj", "itf", itf)

	ini_close()
	
	saveac = false
	isTr = true
}

if (ex == true){
	ini_open("saveg.ini")
	
	ini_write_real("plstat", "plhp", plhp)
	ini_write_real("plstat", "plmp", plmp)
	ini_write_real("plstat", "exp", plexp)
	ini_write_real("plstat", "plmn", plmn)
	ini_write_real("plstat", "pllv", pllv)
	ini_write_real("plstat", "schp", schp)
	ini_write_real("plstat", "scmp", scmp)
	ini_write_real("plstat", "map", map)
	
	ini_close()
	
	ini_open("savj.ini")

	ini_write_real("statsj", "kul", kul)
	ini_write_real("statsj", "kos", kos)
	ini_write_real("statsj", "kmn", kmn)

	ini_write_string("statsj", "qt", qt)
	ini_write_real("statsj", "step", step)
	ini_write_real("statsj", "inw", inw)
	ini_write_real("statsj", "tj", tj)
	ini_write_real("statsj", "t1", t1)
	ini_write_real("statsj", "t2", t2)
	ini_write_real("statsj", "t3", t3)
	ini_read_real("statsj", "final", final)
	ini_write_real("statsj", "itf", itf)

	ini_close()
	
	room_goto(0)
}

if (res == 1){
	plhp = 100
	plmp = 100
	schp = 8
	scmp = 6

	plexp = 50
	plmn = 0
	pllv = 1
	schp = 8
	scmp = 6
	map = 0


	kul = 0
	kos = 0
	kmn = 0

	qt = "говорить с сэнсэем"
	t1 = false
	t2 = false
	t3 = false
	step = 0
	inw =  false
	tj = false
	final = false
	itf = 0
	
	res = 0
}

// restart
if (plhp <= 0){
	room_restart()
}

if (place_meeting(x, y - 25, ObWat)){
	room_restart()
}

if (y > room_height){
	room_restart()
}

// level up
if (plexp >= 100 * pllv and pllv < 8){
	plexp = 0
	pllv += 1
}

// OnGr
if (IsGr or IsWt or isbr or isb){
	OnPt = true
}
else{
	OnPt = false
}

// таймер

if (timer[6] > 0){
	timer[6]--
}

if (timer[5] > 0){
	timer[5]--
}

if (timer[3] > 0){
	timer[3]--
}
if (timer[4] > 0){
	timer[4]--
}

if (timer[0] > 0){
	timer[0]--
}
else {
	bufat = 0
}

// спрайт
if (xmove != 0){
	image_xscale = xmove
}

if (sprite_index != plur){
	xsp = xmove * sp // двтжение по X
}

// движение по Y
if (OnPt == true){
	bfjm = 2
}
else{
	ysp += 0.4
}

// прыжок
if (jm == true){
	if (bfjm == 2){
		ysp = -6
		bfjm -= 1
	}
	else if (bfjm == 1 and tj == true and plmp > 0){
		ysp = -4.5
		bfjm -= 1
	}
}

// урон
if (damages > 0){
	damages--
	plhp -= uron
	xsp = -image_xscale * 5
}
else{
	uron = 0
}

// столкновение

if (OnPt == true){
	if (ysp > 0.4){
		instance_create_depth(x, y - 20, 0, ow0)
	}
}

if (place_meeting(x, y +  ysp, obb) and jm == false){
	ysp = 0
	isb = true
}
else{
	isb = false
}
if (place_meeting(x, y, obb)){
	y--
}

if (place_meeting(x + xsp, y, Obbr)){
	xsp = 0
}
if (place_meeting(x, y + ysp, ObGr) and ysp > 0){	
	ysp = 0
}
if (place_meeting(x, y + ysp, Obbr)){
	ysp = 0
}

if (place_meeting(x + xsp, y - 4, ObWat)){
	sp = 1.5
}
else{
	sp = 3
}


if (place_meeting(x + 1, y, Obbr) and place_meeting(x - 1, y, Obbr)){
	y -= 2
}

if (place_meeting(x, y, ObWat)){
	
	if (xsp != 0){
		timer[2] = room_speed * 1.5
	}
		
	if (inw == true and plmp > 0 and timer[2] > 0 and ysp >= 0){
		ysp = 0
		plmp -= 0.1
	}
	
	
	if (xsp == 0 or plmp <= 0){
		if (timer[2] > 0){
			timer[2]--
		}
		else{
			ysp += 0.1
		}
	}
}
else{
	timer[2] = room_speed * 2
}

if (place_meeting(x, y + ysp, ObWat)){
	if (ysp > 0){
		ysp = ysp / 1.1
	}
}

if (sprite_index == plat or sprite_index == platd){
	if (OnPt == true){
		xsp = xsp / 2
	}
}


x += xsp
y += ysp




// сюжет

if (step == 3 and kul >= 10){
	step = 4
}
if (step == 6 and kmn >= 2){
	step = 7
}
if (step == 15 and kos >= 20){
	step = 16
}


if (step == 0){
	itf = 1
	qt = "говорить с сэнсэем"
}
if (step == 1){
	itf = 2
	qt = "говорить с наствником"
}
if (step == 2){
	itf = 3
	qt = "говорить с бугайшей"
}
if (step == 3){
	itf = 0
	qt = "убить " + string(10 - kul) + " улиток"
}
if (step == 4){
	itf = 3
	qt = "сдать квест"
}
if (step == 5){
	tj = true // two jumps
	
	if (t1 == false){
		t1 = true
		timer[3] = room_speed * 4
	}
	
	itf = 4
	qt = "говорить с самураем"
}
if (step == 6){
	itf = 0
	qt = "убить " + string(2 - kmn) + " маникена"
}
if (step == 7){
	itf = 4
	qt = "сдать квест"
}
if (step == 8){
	itf = 5
	qt = "говрить с мудрецом"
}
if (step == 9){
	itf = 0
	qt = "найти свиток у одноногого дикаря"
}
if (step == 10){
	itf = 5
	qt = "сдать квест"
}
if (step == 11){
	if (t3 == false){
		t3 = true
		timer[6] = room_speed * 4
	}
	
	itf = 2
	qt = "говорить с наставником"
}
if (step == 12){
	itf = 6
	qt = "найти дочь"
}
if (step == 13){
	itf = 2
	qt = "сдать квест"
}
if (step == 14){
	itf = 4
	qt = "говорить с самураем"
}
if (step == 15){
	itf = 0
	qt = "убить " + string(20 - kos) + " осы"
}
if (step == 16){
	itf = 4
	qt = "сдать квест"
}
if (step == 17){
	itf = 5
	qt = "говорить с мудрецом"
}
if (step == 18){
	itf = 0
	qt = "убить кабана"
}
if (step == 19){
	itf = 4
	qt = "сдать квест"
}
if (step == 20){
	inw = true // go on water
	
	if (t2 == false){
		t2 = true
		timer[4] = room_speed * 4
	}
	
	itf = 0
	qt = "найти свиток"
}
if (step == 21){
	itf = 1
	qt = "The End"
}
