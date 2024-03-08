
res = 0

if (room == 1){
	if (file_exists("newg.dat")){
		file = file_text_open_read("newg.dat")
	
		res = file_text_read_real(file)
	
		file_text_close(file)
	}

	
	file = file_text_open_write("newg.dat")
	
	file_text_write_real(file, 0)
	
	file_text_close(file)
}

ex = false

timer = [0, 1, 2, 3, 4, 5, 6]

damages = 0
sp = 3
xsp = 0
ysp = 0
bfjm = 2
IsGr = false
IsWt = false
OnPt = false
isb = false
sp = 0
bufat = 0
xmove = 0
saveac = false
isTr = false
uron = 0

ini_open("saveg.ini")

plhp = ini_read_real("plstat", "plhp", 100)
plmp = ini_read_real("plstat", "plmp", 100)
plexp = ini_read_real("plstat", "exp", 50)
plmn = ini_read_real("plstat", "plmn", 0)
pllv = ini_read_real("plstat", "pllv", 1)
schp = ini_read_real("plstat", "schp", 8)
scmp = ini_read_real("plstat", "scmp", 6)
map = ini_read_real("plstat", "map", 0)

ini_close()

ini_open("savj.ini")

kul = ini_read_real("statsj", "kul", 0)
kos = ini_read_real("statsj", "kos", 0)
kmn = ini_read_real("statsj", "kmn", 0)

qt = ini_read_string("statsj", "qt","говорить с сэнсэем")
step = ini_read_real("statsj", "step", 0)
inw =  ini_read_real("statsj", "inw", false)
tj = ini_read_real("statsj", "tj", false)
t1 = ini_read_real("statsj", "t1", false)
t2 = ini_read_real("statsj", "t2", false)
t3 = ini_read_real("statsj", "t3", false)
final = ini_read_real("statsj", "final", false)
itf = ini_read_real("statsj", "itf", 0)

ini_close()

if (room == 1){
	if (map == 3){
		x = 1850
		y = 530
	}
	else{
		x = 60
		y = 550
	}
}
if (room == 2){
	if (map == 1){
		x = 1340
		y = 610
	}
	else{
		x = 60
		y = 640
	}
}
if (room == 3){
	if (map == 5){
		x = 1375
		y = 510
	}
	else{
		x = 60
		y = 540
	}
}
if (room == 4){
	if (map == 7){
		x = 385
		y = 1840
	}
	else{
		x = 385
		y = 95
	}
}
if (room == 5){
	if (map == 6){
		x = 2830
		y = 665
	}
	else{
		x = 60
		y = 650
	}
}
if (room == 6){
	if (map == 7){
		x = 1800
		y = 680
	}
	else{
		x = 60
		y = 650
	}
}
if (room == 7){
	if (map == 8){
		x = 6010
		y = 700
	}
	else if (map == 6){
		x = 765
		y = 300
	}
	else{
		x = 60
		y = 600
	}
}

sng = irandom_range(0, 3)
audio_stop_sound(_0)
audio_stop_sound(_1)
audio_stop_sound(_2)
audio_stop_sound(_3)
audio_stop_sound(_4)

if (sng == 0){
	audio_play_sound(_0, 10, true)
}
if (sng == 1){
	audio_play_sound(_1, 10, true)
}
if (sng == 2){
	audio_play_sound(_2, 10, true)
}
if (sng == 3){
	audio_play_sound(_3, 10, true)
}

if (room == 8){
	audio_play_sound(_4, 10, true)
	audio_stop_sound(_0)
	audio_stop_sound(_1)
	audio_stop_sound(_2)
	audio_stop_sound(_3)
}

alarm[0] = 1
