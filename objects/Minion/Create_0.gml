/// @description 
movement_inputs[0] = 0;
movement_inputs[1] = 0;
movement_inputs[2] = 0;
movement_inputs[3] = 0;
move_speed = 600;

change = 5;
xoff = random(100);

image_speed = 0;
event_inherited();
//AI
stalking = 600;
radius = 400;


myName = ds_list_find_value(global.Names,irandom(global.totalNames));

teams = irandom(2);
switch teams{
	case 0: team = Team1; break;
	case 1: team = Team2; break;
	case 2: team = Team3; break;
}
textColor = team.teamColor;