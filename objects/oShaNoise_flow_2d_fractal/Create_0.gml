show_debug_overlay(true);
_i = 0;
_sh = sha_noise_flow_2d_fractal;
_sh_name = "sha_noise_flow_2d_fractal";

_seed = 1;

if (!shader_is_compiled(_sh)) {
    game_end();
}



