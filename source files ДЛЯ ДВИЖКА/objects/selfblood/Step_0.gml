
image_xscale = -ObPl.image_xscale

x = ObPl.x + image_xscale * 10
y = ObPl.y

if (ObPl.damages > 0){	
	image_alpha = 1
}
else if (round(image_index) == 3){
	image_alpha = 0
}
