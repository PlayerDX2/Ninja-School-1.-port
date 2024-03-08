
if (room != 0){
	if (savr != room){
		savr = room
	
		ini_open("saveg.ini")
	
		ini_write_real("plstat", "savr", savr)
	
		ini_close()
	}
}

if (room == 1 and ishc == false){
	ishc = true
	
	ini_open("saveg.ini")
	
	ini_write_real("plstat", "ishc", ishc)
	
	ini_close()
}

if (room == 2 and istg == false){
	istg = true
	
	ini_open("saveg.ini")
	
	ini_write_real("plstat", "istg", istg)
	
	ini_close()
}

if (room == 3 and iskw == false){
	iskw = true
	
	ini_open("saveg.ini")
	
	ini_write_real("plstat", "iskw", iskw)
	
	ini_close()
}

if (room == 4 and iskv == false){
	iskv = true
	
	ini_open("saveg.ini")
	
	ini_write_real("plstat", "iskv", iskv)
	
	ini_close()
}

if (room == 5 and ists == false){
	ists = true
	
	ini_open("saveg.ini")
	
	ini_write_real("plstat", "ists", ists)
	
	ini_close()
}

if (room == 6 and issu == false){
	issu = true
	
	ini_open("saveg.ini")
	
	ini_write_real("plstat", "issu", issu)
	
	ini_close()
}

if (room == 7 and ismw == false){
	ismw = true
	
	ini_open("saveg.ini")
	
	ini_write_real("plstat", "ismw", ismw)
	
	ini_close()
}

if (room == 8 and iswr == false){
	iswr = true
	
	ini_open("saveg.ini")
	
	ini_write_real("plstat", "iswr", iswr)
	
	ini_close()
}
	