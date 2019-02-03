/// @description 
timer --;

if timer <= 0{
	if distance_to_point(Camera.x,Camera.y) > 2500 {
		instance_deactivate_object(id);	
	}
	timer = 60;
}