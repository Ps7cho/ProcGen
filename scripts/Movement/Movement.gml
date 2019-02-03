///Movement(speed, direction);
/// @arg speed
/// @arg direction

var spd = argument0;
var dir = argument1;

var xtarg = clamp(x+lengthdir_x(spd,dir),0,room_width);
var ytarg = clamp(y+lengthdir_y(spd,dir),0,room_height);

if place_free(xtarg,ytarg) {
    x = xtarg;
    y = Wave(ytarg-3,ytarg+3,0.5,0);
}else {
    var sweep_interval = 10;
    
    for ( var angle = sweep_interval; angle <= 80; angle += sweep_interval) {
        for ( var multiplier = -1; multiplier <= 1; multiplier += 2) {      
            var angle_to_check = dir+angle*multiplier;
            xtarg = x+lengthdir_x(spd, angle_to_check);
            ytarg = y+lengthdir_y(spd, angle_to_check);     
            if place_free(xtarg,ytarg) {
                x = xtarg;
                y = ytarg;  
                exit;       
            }   
        }
    }
}
