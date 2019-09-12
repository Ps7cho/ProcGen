///setupLoot();
/// @arg item
/// @arg item Type
/// @arg "name"
/// @arg category
/// @arg object
/// @arg image
/// @arg damage
/// @arg fire Rate
/// @arg range
/// @arg [max_stacks=-1]

var i = argument[0];
LOOTINFO[i, gunInfo.name] =			argument[1];
LOOTINFO[i, gunInfo.category] =		argument[2];
LOOTINFO[i, gunInfo.object] =		argument[3];
LOOTINFO[i, gunInfo.sprite] =		argument[4];
LOOTINFO[i, gunInfo.baseDamage] =	argument[5];
LOOTINFO[i, gunInfo.fireRate] =		argument[6];
LOOTINFO[i, gunInfo.range] =		argument[7];
LOOTINFO[i, gunInfo.stackMax] =				-1

if argument_count > 8 {
	LOOTINFO[i, gunInfo.stackMax] = argument[8];	
}else{
	LOOTINFO[i, gunInfo.stackMax] = 1;
}	

//gunDamage = LOOTINFO[weaponType, gunInfo.baseDamage];