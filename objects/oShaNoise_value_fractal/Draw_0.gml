_i++;
shader_set(_sh);
    var frame = shader_get_uniform(_sh, "u_frame");
    shader_set_uniform_f(frame, _i);
    
    var res = shader_get_uniform(_sh, "u_resolution");
    shader_set_uniform_f(res, room_width, room_height);
    
    var seed = shader_get_uniform(_sh, "u_seed");
    shader_set_uniform_f(seed, _seed);

    var pers = shader_get_uniform(_sh, "u_persistence");
    shader_set_uniform_f(pers, 0.65);
    
    var freq = shader_get_uniform(_sh, "u_freq");
    shader_set_uniform_f(freq, 16.0);
    
    draw_rectangle(0, 0, room_width, room_height, false);
shader_reset();



