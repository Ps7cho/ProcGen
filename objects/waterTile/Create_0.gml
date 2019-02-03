/// @description 

// Inherit the parent event
event_inherited();
shade = 0.99;
xscale = random_range(0.8,1.39);
yscale = xscale;
rot = 0;

grow = true;

object_set_solid(waterTile,true);
sprite_collision_mask(0, false, 2, 150, 175, 250, 150, bboxkind_ellipse, 0);
sprite_collision_mask(1, false, 2, 150, 175, 250, 150, bboxkind_ellipse, 0);
sprite_collision_mask(3, false, 2, 150, 175, 250, 150, bboxkind_ellipse, 0);
sprite_collision_mask(2, false, 2, 150, 175, 250, 150, bboxkind_ellipse, 0);