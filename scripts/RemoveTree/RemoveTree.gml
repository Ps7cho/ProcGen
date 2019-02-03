//Take this tree ouf of the draw grid

with(obj_draw_controller){
	var yer;
	yer = ds_grid_value_y(grid, 0, 0, 0, ds_grid_height(grid), other.id);
	ds_grid_set(grid,0,yer,0);  //SET LIST VALUE TO ZERO SO obj_draw_controller knows to remove the row from the list
}