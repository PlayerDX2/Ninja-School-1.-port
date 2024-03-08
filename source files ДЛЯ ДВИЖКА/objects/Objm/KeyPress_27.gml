
if (pause == false){
	pause = true
	
	instance_deactivate_all(true)
	instance_activate_object(Objm)
	instance_activate_object(bg1)
	instance_activate_object(bg2)
	instance_activate_object(bg3)
	instance_activate_object(bg4)
	instance_activate_object(bg5)
	instance_activate_object(Suns)
	
	instance_create_depth(360, 180, 0, Ohbg)
	instance_create_depth(0, 0, 0, och)
	instance_create_depth(300, 80, 0, x1)
	instance_create_depth(0, 0, 0, x2)
	instance_create_depth(0, 0, 0, x3)
	instance_create_depth(0, 0, 0, x4)
	instance_create_depth(0, 0, 0, x5)
	instance_create_depth(0, 0, 0, x6)
	instance_create_depth(0, 0, 0, x7)
	instance_create_depth(360, 180, 0, Obmap)
	instance_create_depth(360, 180, 0, Obtep)
	instance_create_depth(360, 180, 0, Obthp)
	instance_create_depth(360, 180, 0, Obtrp)
	instance_create_depth(360, 180, 0, Obtmp)
	instance_create_depth(360, 180, 0, ObMenup)
}
else{
	pause = false
	instance_activate_all()
	
	instance_destroy(Ohbg)
	instance_destroy(och)
	instance_destroy(x1)
	instance_destroy(x2)
	instance_destroy(x3)
	instance_destroy(x4)
	instance_destroy(x5)
	instance_destroy(x6)
	instance_destroy(x7)
	instance_destroy(Obmap)
	instance_destroy(Obtep)
	instance_destroy(Obthp)
	instance_destroy(Obtrp)
	instance_destroy(Obtmp)
	instance_destroy(ObMenup)
}
