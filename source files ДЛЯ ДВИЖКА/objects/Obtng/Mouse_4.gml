
if (Ohbg.s == false){
	file = file_text_open_write("newg.dat")
	
	file_text_write_real(file, 1)
	
	file_text_close(file)

	room_goto(1)
}
