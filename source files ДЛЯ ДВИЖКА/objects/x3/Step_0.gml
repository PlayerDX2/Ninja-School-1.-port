
if (room != 4){
	x = camera_get_view_x(view_camera[0]) + 263
	y = camera_get_view_y(view_camera[0]) + 135
}
else{
	x = camera_get_view_x(view_camera[0]) + 164
	y = camera_get_view_y(view_camera[0]) + 84
}

if (timer > 0){
	timer--
}
else if (timer != -10 and timer <= 0){
	ObPl.saveac = true

	if (ObPl.isTr){
		ObPl.isTr = false
		room_goto(r_tg)
	}
}
