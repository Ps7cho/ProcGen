// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // oRoomSwitcher
global.__objectDepths[1] = 0; // oGPUNoise
global.__objectDepths[2] = 0; // oShaNoise_value_fractal
global.__objectDepths[3] = 0; // oShaNoise_flow_2d_fire
global.__objectDepths[4] = 0; // oShaNoise_flow_2d_fractal
global.__objectDepths[5] = 0; // obj_cbGUI_parent
global.__objectDepths[6] = 0; // obj_cbGUI_textbox
global.__objectDepths[7] = 0; // obj_cbGUI_slider
global.__objectDepths[8] = 0; // obj_cbGUI_checkbox
global.__objectDepths[9] = 0; // obj_cbGUI_radio
global.__objectDepths[10] = 0; // obj_cbGUI_button
global.__objectDepths[11] = 0; // obj_cbGUI_imagebutton
global.__objectDepths[12] = 0; // obj_cbGUI_dropdown
global.__objectDepths[13] = 0; // obj_cbGUI_colorpicker
global.__objectDepths[14] = -1000; // obj_cbDataGUI_controller
global.__objectDepths[15] = -1001; // obj_cbDataGUI_component
global.__objectDepths[16] = -1001; // obj_cbDataGUI_folder
global.__objectDepths[17] = -1001; // obj_cbDataGUI_preset
global.__objectDepths[18] = -1001; // obj_cbDataGUI_tooltip
global.__objectDepths[19] = -2001; // obj_cbDataGUI_notification


global.__objectNames[0] = "oRoomSwitcher";
global.__objectNames[1] = "oGPUNoise";
global.__objectNames[2] = "oShaNoise_value_fractal";
global.__objectNames[3] = "oShaNoise_flow_2d_fire";
global.__objectNames[4] = "oShaNoise_flow_2d_fractal";
global.__objectNames[5] = "obj_cbGUI_parent";
global.__objectNames[6] = "obj_cbGUI_textbox";
global.__objectNames[7] = "obj_cbGUI_slider";
global.__objectNames[8] = "obj_cbGUI_checkbox";
global.__objectNames[9] = "obj_cbGUI_radio";
global.__objectNames[10] = "obj_cbGUI_button";
global.__objectNames[11] = "obj_cbGUI_imagebutton";
global.__objectNames[12] = "obj_cbGUI_dropdown";
global.__objectNames[13] = "obj_cbGUI_colorpicker";
global.__objectNames[14] = "obj_cbDataGUI_controller";
global.__objectNames[15] = "obj_cbDataGUI_component";
global.__objectNames[16] = "obj_cbDataGUI_folder";
global.__objectNames[17] = "obj_cbDataGUI_preset";
global.__objectNames[18] = "obj_cbDataGUI_tooltip";
global.__objectNames[19] = "obj_cbDataGUI_notification";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for