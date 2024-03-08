
// animation

if (image_xscale > -1){
	image_xscale -= 0.05
}
else{
	image_xscale = 1
}


if (ObPl.itf == 0){
	px = 0
	py = 0
	image_alpha = 0
}
else{
	image_alpha = 1
}

if (room == 1){
	if (ObPl.itf == 1){
		px = Ob01.x - 22
		py = Ob01.y - 30
	}
	if (ObPl.itf == 2){
		px = Ob30.x
		py = Ob30.y - 30
	}
	if (ObPl.itf == 3){
		px = Ob10.x
		py = Ob10.y - 30
	}
	if (ObPl.itf == 4){
		px = Ob40.x
		py = Ob40.y - 30
	}
	if (ObPl.itf == 5){
		px = Ob20.x
		py = Ob20.y - 30
	}
}

if (room == 5 and ObPl.itf == 6){
	px = Obg.x
	py = Obg.y - 30
	
}


if (ObPl.itf != 6 and room != 1){
	if (room == 2){
		image_angle = 90
		
		px = 1360
		py = 525
	}
	if (room == 3){
		image_angle = -90
		
		px = 50
		py = 460
	}
	if (room == 4){
		image_angle = 90
		
		px = 400
		py = 45
	}
	if (room == 5){
		image_angle = -90
		
		px = 45
		py = 620
	}
	if (room == 6){
		image_angle = -90
		
		px = 50
		py = 460
	}
	if (room == 7){
		image_angle = -90
		
		px = 50
		py = 560
	}
}

if (ObPl.itf == 6 and room != 5){
	if (room == 2){
		image_angle = 90
		
		px = 1360
		py = 525
	}
	if (room == 3){
		image_angle = 90
		
		px = 1360
		py = 430
	}
	if (room == 4){
		image_angle = 90
		
		px = 400
		py = 45
	}
	if (room == 1){
		image_angle = -90
		
		px = 1840
		py = 430
	}
	if (room == 6){
		image_angle = -90
		
		px = 50
		py = 460
	}
	if (room == 7){
		image_angle = -90
		
		px = 50
		py = 560
	}
}

if (room == 4){
	if (px > camera_get_view_x(view_camera[0]) + 450 ){
		image_angle = 90
		x = camera_get_view_x(view_camera[0]) + 440
	}
	if (px < camera_get_view_x(view_camera[0])){
		image_angle = -90
		x = camera_get_view_x(view_camera[0]) + 10
	}
}
else{
	if (px > camera_get_view_x(view_camera[0]) + 720 ){
		image_angle = 90
		x = camera_get_view_x(view_camera[0]) + 700
	}
	if (px < camera_get_view_x(view_camera[0])){
		image_angle = -90
		x = camera_get_view_x(view_camera[0]) + 20
	}
}
	

if (px < ObPl.x + 360 and px > ObPl.x - 360){
	
	if (room == 1){
		image_angle = 0
	}
	
	x = px
	y = py
}

if (room == 4){
	if (py > camera_get_view_y(view_camera[0]) + 200){
		y = camera_get_view_y(view_camera[0]) + 180
	}
	else if (py < camera_get_view_y(view_camera[0])){
		y = camera_get_view_y(view_camera[0]) + 20
	}
	else{
		y = py
	}
}
else{
	if (py > camera_get_view_y(view_camera[0]) + 320){
		y = camera_get_view_y(view_camera[0]) + 300
	}
	else if (py < camera_get_view_y(view_camera[0])){
		y = camera_get_view_y(view_camera[0]) + 20
	}
	else{
		y = py
	}
}
