show_debug_overlay(true);
randomize();

_i = 0;

_shader = _p_demo;
_seed = 0;
_pers = 0.65;
_freq = 16.0;
_scale = 1.0;
_time_as_z = true;
_x_offset = 0;
_y_offset = 0;
_z_offset = 0;


// Create the GUI using cbDataGUI extension
texture_set_interpolation(false);

scr_cbDataGUI_create();

// shader
var dsm = ds_map_create();
ds_map_add(dsm, "Perlin Noise", real(asset_get_index("_p_demo")));
ds_map_add(dsm, "Simplex Noise", real(asset_get_index("_s_demo")));
ds_map_add(dsm, "Value Noise", real(asset_get_index("_v_demo")));

scr_cbDataGUI_add(oGPUNoise, "shader", cbData_type.number, -1, dsm);
scr_cbDataGUI_set_value(oGPUNoise, "shader", _shader);
ds_map_destroy(dsm);

// seed - string - numbers only
var s_gui = scr_cbDataGUI_add(oGPUNoise, "seed", cbData_type.text, -1);
scr_textbox_set_allowed_chars(s_gui._component, "0123456789-+");
scr_cbDataGUI_set_value(oGPUNoise, "seed", string(_seed));

// persistence
scr_cbDataGUI_add(oGPUNoise, "persistence", cbData_type.number, -1);
scr_cbDataGUI_set_range(oGPUNoise, "persistence", 0, 1);
scr_cbDataGUI_set_value(oGPUNoise, "persistence", _pers);

// frequency
scr_cbDataGUI_add(oGPUNoise, "frequency", cbData_type.number, -1);
scr_cbDataGUI_set_range(oGPUNoise, "frequency", 0, 32.0);
scr_cbDataGUI_set_value(oGPUNoise, "frequency", _freq);

// scale
scr_cbDataGUI_add(oGPUNoise, "scale", cbData_type.number, -1);
scr_cbDataGUI_set_range(oGPUNoise, "scale", 0, 8);
scr_cbDataGUI_set_value(oGPUNoise, "scale", _scale);

// time_as_z
scr_cbDataGUI_add(oGPUNoise, "time_as_z", cbData_type.boolean, -1);
scr_cbDataGUI_set_value(oGPUNoise, "time_as_z", _time_as_z);

// generate a random seed button
scr_cbDataGUI_add(oGPUNoise, "scr_generate_random_seed", cbData_type.function, -1);

// x offset
scr_cbDataGUI_add(oGPUNoise, "x_offset", cbData_type.number, -1);
scr_cbDataGUI_set_range(oGPUNoise, "x_offset", -room_width, room_width);
scr_cbDataGUI_set_value(oGPUNoise, "x_offset", _x_offset);

// y offset
scr_cbDataGUI_add(oGPUNoise, "y_offset", cbData_type.number, -1);
scr_cbDataGUI_set_range(oGPUNoise, "y_offset", -room_height, room_height);
scr_cbDataGUI_set_value(oGPUNoise, "y_offset", _y_offset);

// z offset
scr_cbDataGUI_add(oGPUNoise, "z_offset", cbData_type.number, -1);
scr_cbDataGUI_set_range(oGPUNoise, "z_offset", -100, 100);
scr_cbDataGUI_set_value(oGPUNoise, "z_offset", _z_offset);


