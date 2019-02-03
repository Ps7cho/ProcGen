/// @descript

instance_create_layer(room_width/2,room_height/2,"Player",Player);
draw_set_halign(fa_center);

quadtree = instance_create_layer(0,0,"Instances",Ground)

camera = view_camera[0];
follow = Player;
view_W_half = camera_get_view_width(camera)*0.5;
view_H_half = camera_get_view_height(camera)*0.5;
xTo = xstart;
yTo = ystart;

