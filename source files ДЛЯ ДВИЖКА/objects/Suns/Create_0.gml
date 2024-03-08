dn = irandom_range(0, 1)

if (dn == 1){
	sprite_index = sun1
	
	lay_id = layer_get_id("Background")
	back_id = layer_background_get_id(lay_id)
	 
	layer_background_sprite(back_id, Nbg)
}
else{
	sprite_index = sun0
	
	lay_id = layer_get_id("Background")
	back_id = layer_background_get_id(lay_id)
	 
	layer_background_sprite(back_id, bg)
}
