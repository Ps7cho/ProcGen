timer --;
shoot --;


if timer <= 0 {
	instance_activate_region(Camera.x-1100,Camera.y-700,2200,1400,true);
	timer = 5;
}


	