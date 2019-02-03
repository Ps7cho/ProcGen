/// Loot tables			
var drop = noone;
// decide loot drop rate
if Chance(100){
	// roll what loot type 
	var number = irandom(0);
	switch number{
			// roll what loot 
		case 0:	drop = lootType.gun;	break;
		case 1:	drop = lootType.ammo;		break;
		case 2:	drop = lootType.money;		break;
		}
	if drop > -1 {
		var guntype = 2; //bolt rifle
		var object = LOOTINFO[guntype, gunInfo.object];
		var item = instance_create_layer(x,y,"Instances",object);
		item.category = drop;
		item.subtype = guntype;
		item.myName = LOOTINFO[guntype, gunInfo.name];
		item.Health = -1;
	}



}
instance_destroy();