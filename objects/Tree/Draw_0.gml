/// @description 

var r = sprite_width/2;



//rotational offset based on perspective 
var xdif = x - Camera.x;
var ydif = y - Camera.y;

//cilindar height
xdif = clamp(xdif, -100, 100);
ydif = clamp(ydif, -100, 100);
//top circle x,y 
var x2 = x+xdif;
var y2 = y+ydif;
//cilindar direction
var dir = point_direction(x,y,x2,y2);
//circle face plane
var newdir = dir - 90;
//2D circumference horizon point
var lineX = x+lengthdir_x(r, newdir);
var lineY = y+lengthdir_y(r, newdir);
var lineX2 = x-lengthdir_x(r, newdir);
var lineY2 = y-lengthdir_y(r, newdir);

draw_line_colour(lineX,lineY, lineX+xdif, lineY+ydif, c_black, c_black);
draw_circle_colour(x, y, r, c_green, c_green, false);
draw_circle_colour(x2, y2, r, c_green, c_green, false);
draw_line_colour(lineX,lineY, lineX+xdif, lineY+ydif, c_green, c_green);
draw_line_colour(lineX2,lineY2, lineX2+xdif, lineY2+ydif, c_green, c_green);

/*
draw_self();
draw_sprite_ext(PoligonTree1,image_index,x-68,y+130,0.9,1.6,145,c_black,0.4);