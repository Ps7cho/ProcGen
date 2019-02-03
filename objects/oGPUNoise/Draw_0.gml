// Get settings from the GUI
// shader
_shader = scr_cbDataGUI_get_value(oGPUNoise, "shader");
// seed
_seed = scr_cbDataGUI_get_value(oGPUNoise, "seed");
// persistence
_pers = scr_cbDataGUI_get_value(oGPUNoise, "persistence");
// frequency
_freq = scr_cbDataGUI_get_value(oGPUNoise, "frequency");
// scale
_scale = scr_cbDataGUI_get_value(oGPUNoise, "scale");
// time_as_z
_time_as_z = scr_cbDataGUI_get_value(oGPUNoise, "time_as_z");
// x offset
_x_offset = scr_cbDataGUI_get_value(oGPUNoise, "x_offset");
// y offset
_y_offset = scr_cbDataGUI_get_value(oGPUNoise, "y_offset");
// x offset
_z_offset = scr_cbDataGUI_get_value(oGPUNoise, "z_offset");

// Increase frame count
if (_time_as_z) _i++;

// Draw shader result to the screen
shader_set(_shader);
    var frame = shader_get_uniform(_shader, "u_frame");
    shader_set_uniform_f(frame, _i);
    
    var res = shader_get_uniform(_shader, "u_resolution");
    shader_set_uniform_f(res, room_width, room_height);
    
    var seed = shader_get_uniform(_shader, "u_seed");
    shader_set_uniform_f(seed, _seed);

    var pers = shader_get_uniform(_shader, "u_persistence");
    shader_set_uniform_f(pers, _pers);
    
    var freq = shader_get_uniform(_shader, "u_freq");
    shader_set_uniform_f(freq, _freq);
    
    var scale = shader_get_uniform(_shader, "u_scale");
    shader_set_uniform_f(scale, _scale);

    var xoffset = shader_get_uniform(_shader, "u_xoffset");
    shader_set_uniform_f(xoffset, _x_offset);
        
    var yoffset = shader_get_uniform(_shader, "u_yoffset");
    shader_set_uniform_f(yoffset, _y_offset);
        
    var zoffset = shader_get_uniform(_shader, "u_zoffset");
    shader_set_uniform_f(zoffset, _z_offset);
        
    draw_rectangle(0, 0, room_width, room_height, false);
    
shader_reset();



