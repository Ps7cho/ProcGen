/// @description 


var waveSpeed = 0.003;
draw_sprite_ext(sprite_index,image_index,x,y,xscale,yscale,rot,c_white, shade);
if grow {
	xscale += waveSpeed;
	yscale += waveSpeed;
	if xscale >= 1.4{
		grow = false;	
	}
}else{
	xscale -= waveSpeed;
	yscale -= waveSpeed;
	if xscale <= 0.8{
		grow = true;	
	}	
}
rot += random_range(-0.1,0.1);