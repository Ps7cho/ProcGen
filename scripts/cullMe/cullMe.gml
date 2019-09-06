///cullMe();

timer --;

if timer <= 0{
	if distance_to_point(Camera.x,Camera.y) > cullDistance {
		instance_deactivate_object(id);	
	}
	timer = 60;
}