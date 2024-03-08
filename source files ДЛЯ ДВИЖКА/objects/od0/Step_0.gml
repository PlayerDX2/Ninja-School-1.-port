
image_xscale = ObPl.image_xscale


if (ObPl.OnPt == true){
	x = ObPl.x - image_xscale * 15
	y = ObPl.y + 20
}


if (ObPl.xsp != 0 and ObPl.OnPt == true){	
	image_alpha = 1
}
else if (round(image_index) == 5){
	image_alpha = 0
}
