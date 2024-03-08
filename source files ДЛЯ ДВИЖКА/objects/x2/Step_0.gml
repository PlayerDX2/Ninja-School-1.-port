
if (room != 4){
	x = camera_get_view_x(view_camera[0]) + 394
	y = camera_get_view_y(view_camera[0]) + 83
}
else{
	x = camera_get_view_x(view_camera[0]) + 246
	y = camera_get_view_y(view_camera[0]) + 52
}


if (timer > 0){
	timer--
}
else if (timer != -10 and timer <= 0){
	ObPl.saveac = true

	if (ObPl.isTr){
		ObPl.isTr = false
		room_goto(r_kv)
	}
}
