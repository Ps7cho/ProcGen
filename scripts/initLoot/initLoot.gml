
enum lootType {
	weapon,
	ammo,
	money,
	
}

enum weaponType {
	dagger,
	sword,
	axe,
	bow,
}

enum gunInfo {
	name,
	category,
	object,
	sprite,
	baseDamage,
	fireRate,
	range,
	stackMax
	
}

globalvar LOOTINFO; LOOTINFO = 0;

var ic = lootType.weapon;
//			item		Item type						name		cat	object		image				dmg	RoF	Range
setupLoot(				weaponType.sword,		"Hebrons Blade",	ic, objPistol,	spr_oneHandSword,	4,	0,	400);
setupLoot(				weaponType.sword,		"Elven Blight",		ic, objRifle,	spr_handHalf,		6,	0,	500);
setupLoot(				weaponType.sword,		"Bastard Sword",	ic, objSniper,	spr_Bastard,		80, 0,	1200);
setupLoot(				weaponType.axe,			"Ogdens War Axe",	ic, objPulse,	spr_Axe,			12, 0,	800);