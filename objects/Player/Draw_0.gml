/// @description 
draw_self();
draw_sprite_ext(sprite_index,Wrap(image_index-3,0,image_number-1),x-50,y+90,0.9,1.6,145,c_black,0.4);
draw_text_color(x,y-60,myName,textColor,textColor,textColor,textColor,1);

with highlight{
	draw_sprite(Redicul,0,x,y);
}
draw_circle(x,y,gunRange,true);