/// @description _scr_rotate_point(centerx, centery, angle, pointx, pointy){
/// @param centerx
/// @param  centery
/// @param  angle
/// @param  pointx
/// @param  pointy
// returns array

var cx = argument0, cy = argument1, angle = argument2,
    px = argument3, py = argument4;

var ret;
ret[0] = cos(angle) * (px - cx) - sin(angle) * (py - cy) + cx;
ret[1] = sin(angle) * (px - cx) + cos(angle) * (py - cy) + cy;

return ret;

