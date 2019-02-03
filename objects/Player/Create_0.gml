/// @description 
image_speed = 0;
event_inherited();


timer = 0;

movement_inputs[0] = ord("D");
movement_inputs[1] = ord("W");
movement_inputs[2] = ord("A");
movement_inputs[3] = ord("S");


move_speed = 600;
maxMoveSpeed = move_speed;
crouchSpeed = 400;

harvestDistance = 200;

initLoot();

gun = gunType.pistol;
updateGun(gun);


shooting = false;
shoot = 0;
probability = noone;


inventoryButton = vk_tab;
clearButton = vk_escape;
grabButton = ord("E");

inventory = false;
inventoryOut = 100;

highlight = noone;
Target = noone;
scalez = 0.6;

myName = "Player"
textColor = c_black;