///Inputs


var move_xinput = 0;
var move_yinput = 0;

for ( var i = 0; i < array_length_1d(movement_inputs); i++){
    var this_key = movement_inputs[i];
    if keyboard_check(this_key) {
        var this_angle = i*90;
        move_xinput += lengthdir_x(1, this_angle);
        move_yinput += lengthdir_y(1, this_angle);
    }
}

var moving = ( point_distance(0,0,move_xinput,move_yinput) > 0 );

if moving  {
	    var move_dir = point_direction(0,0,move_xinput,move_yinput);
	    Movement(move_speed*global.seconds_passed,  move_dir);
}


if keyboard_check_pressed(inventoryButton){
	inventory = !inventory;	
}

if keyboard_check_pressed(clearButton){
	Target = noone;	
	highlight = noone;
}

if keyboard_check_pressed(grabButton){
	if object_get_parent(highlight.object_index) = loot { 
		var gun = highlight.subtype;
		updateGun(gun);
		instance_destroy(highlight);
	}
}


