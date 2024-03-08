
if (room != 4){
	x = camera_get_view_x(view_camera[0]) + 410
	y = camera_get_view_y(view_camera[0]) + 197
}
else{
	x = camera_get_view_x(view_camera[0]) + 256
	y = camera_get_view_y(view_camera[0]) + 123
}

if (timer > 0){
	timer--
}
else if (timer != -10 and timer <= 0){
	ObPl.saveac = true

	if (ObPl.isTr){
		ObPl.isTr = false
		room_goto(r_su)
	}
}
