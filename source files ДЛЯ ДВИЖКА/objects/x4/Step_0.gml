
if (room != 4){
	x = camera_get_view_x(view_camera[0]) + 425
	y = camera_get_view_y(view_camera[0]) + 155
}
else{
	x = camera_get_view_x(view_camera[0]) + 265
	y = camera_get_view_y(view_camera[0]) + 97
}

if (timer > 0){
	timer--
}
else if (timer != -10 and timer <= 0){
	ObPl.saveac = true

	if (ObPl.isTr){
		ObPl.isTr = false
		room_goto(r_ts)
	}
}
