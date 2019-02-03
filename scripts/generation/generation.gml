///Terrain object generation
//

var tree = irandom(1);
if tree = 1 {
	instance_create_layer(x+random_range(-80,80),y+random_range(-80,80),"Instances", objTrunk);
	
}else{
	var minion = irandom(25);
	if minion = 1 {
		var guy = instance_create_layer(x,y,"Over", Minion)	

		instance_deactivate_object(guy);
	}
}
