/// @description 

global.seconds_passed = delta_time/1000000;


//Harvesting
if mouse_check_button(mb_right){
	if distance_to_object(highlight) <= harvestDistance{
		with highlight{
			if  object_is_ancestor(object_index,RESOURCES){
				instance_destroy();	
			}
		}
	}
}




#region					Looking Direction // shooting // Accruacy
if highlight {
	probability = scrAccuracy(highlight);
	
	if keyboard_check(vk_space){
		if instance_exists(highlight){					// shooting 
			shooting = true;
			LookingDirection(highlight.x,highlight.y);
		}else{
			shooting = false;	
		}
											
		if shoot <= 0 {
			var shot = irandom(100);
			if shot <= probability{			//hit
				with highlight{
					damageDealt = (other.gunDamage)*(other.probability/100);		//Damage range
					Health -= damageDealt;
				}
			}else{								//miss
				
			}
			move_speed = crouchSpeed;
			shoot = gunRate;
		}
	}else{
		shooting = false;
		move_speed = maxMoveSpeed;
	}
}
if !shooting{
	LookingDirection(mouse_x,mouse_y);		//looking
}
#endregion

Inputs();				 // movement inputs
timers();


