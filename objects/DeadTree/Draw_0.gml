/// @description 
slant = distance_to_point(Camera.x,Camera.y+Camera.view_H_half);
dir = point_direction(Camera.x,Camera.y+Camera.view_H_half,x,y);
change = slant/0.02;
for (var i = 0; i < image_number; i++;){
	new_x = x + lengthdir_x(i*(slant*0.02),dir); // extend out at that direction, a distance that is determined based off a combination of distance to center and what layer we are on
	new_y = y + lengthdir_y(i*(slant*0.02),dir);
	draw_sprite(sprite_index,i,new_x,new_y);
}