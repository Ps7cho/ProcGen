_i++;

shader_set(_sh);
    var frame = shader_get_uniform(_sh, "u_frame");
    shader_set_uniform_f(frame, _i);
    
    var res = shader_get_uniform(_sh, "u_resolution");
    shader_set_uniform_f(res, room_width, room_height);
    
    var scale = shader_get_uniform(_sh, "u_scale");
    shader_set_uniform_f(scale, 8.0);
    
    draw_rectangle(0, 0, room_width, room_height, false);
shader_reset();


