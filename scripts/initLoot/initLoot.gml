
enum lootType {
	gun,
	ammo,
	money,
	
}

enum gunType {
	pistol,
	automaticRifle,
	boltRifle,
	burstRifle,
	//semiAutomatic
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

var ic = lootType.gun;
setupLoot(gunType.pistol, "Handgun", ic, objPistol, spr_pistol, 4, 8, 400);
setupLoot(gunType.automaticRifle, "AR-15", ic, objRifle, spr_Rifle, 6, 6, 500);
setupLoot(gunType.boltRifle, "Bolt Action", ic, objSniper, spr_sniper, 80, 20, 1200);
setupLoot(gunType.burstRifle, "Burst Rifle", ic, objPulse, spr_pulse, 12, 10, 800);