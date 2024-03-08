
if (room != 4){
	x = camera_get_view_x(view_camera[0]) + 297
	y = camera_get_view_y(view_camera[0]) + 75
}
else{
	x = camera_get_view_x(view_camera[0]) + 185
	y = camera_get_view_y(view_camera[0]) + 47
}


if (timer > 0){
	timer--
}
else if (timer != -10 and timer <= 0){
	ObPl.saveac = true

	if (ObPl.isTr){
		ObPl.isTr = false
		room_goto(r_hc)
	}
}
