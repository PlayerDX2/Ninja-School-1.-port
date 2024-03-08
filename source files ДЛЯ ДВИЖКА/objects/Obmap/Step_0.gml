
if (map){
	if (timer > 0){
		timer--
	}
	
	x1.image_alpha = 1
	x2.image_alpha = 1
	x3.image_alpha = 1
	x4.image_alpha = 1
	x5.image_alpha = 1
	x6.image_alpha = 1
	x7.image_alpha = 1
}
else{
	timer = 30
	x1.image_alpha = 0
	x2.image_alpha = 0
	x3.image_alpha = 0
	x4.image_alpha = 0
	x5.image_alpha = 0
	x6.image_alpha = 0
	x7.image_alpha = 0
	
}

x = camera_get_view_x(view_camera[0]) + 360
y = camera_get_view_y(view_camera[0]) + 160
