/// @description 
if distance_to_object(Team1) < TeamSize{
	draw_sprite_ext(sprite_index,image_index,x,y,1,1,1,Team1.teamColor,1);
}else if distance_to_object(Team2) < TeamSize{
	draw_sprite_ext(sprite_index,image_index,x,y,1,1,1,Team2.teamColor,1);
}else if distance_to_object(Team3) < TeamSize{
	draw_sprite_ext(sprite_index,image_index,x,y,1,1,1,Team3.teamColor,1);
}else{
	draw_self();
}