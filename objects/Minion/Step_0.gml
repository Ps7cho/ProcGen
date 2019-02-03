/// @description 

change --;
if change <= 0 {
	change = irandom_range(5,60);
	movement_inputs[irandom(3)] = irandom(1);

}else if change mod 5 = 0{
	xoff+= random(0.02)
	image_index = Wrap(scr_sn_noise(0,image_number*3,1,1,1,(xoff)),0,image_number-1);
}

if Health <= 0 {
	instance_create_layer(x,y,"Instances",loot);			
	xx = 0;
	while !place_free(team.x+1*xx,team.y){
		xx ++;	
	}
	x = team.x+1*xx;
	y = team.y;
	Health = MaxHealth;
}



if collision_circle(x,y,radius,Player,false,true){
	stalking -= 1;
	if stalking <= 0 {
		for ( var i = 0; i < array_length_1d(movement_inputs); i++){
			movement_inputs[i] = 0;
		}
		change = 200;
		if stalking <= -300{
			stalking = 1200;	
		}else if stalking < -100 and stalking > irandom_range(-130,-160){
		image_index = image_index-random(0.5);
		if irandom(2) = 0{
			}else if stalking < -170 and stalking > -200 {
			image_index = image_index+random(0.5);
			}
		}
	}
}



Inputs1();

