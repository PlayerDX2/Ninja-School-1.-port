
if (s){
	if (timer > 0){
		timer--
	}
}
else{
	timer = 30
}

if (room == 0){
	x = camera.x
	y = camera.y
}
else{
	x = camera_get_view_x(view_camera[0]) + 360
	y = camera_get_view_y(view_camera[0]) + 160
}
