/// @description submit to draw list

if(x > __view_get( e__VW.XView, 0 )-100 
and x < (__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ))+100 
and y > __view_get( e__VW.YView, 0 )-100 
and y < (__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ))+100){
	//inside the view

	if(SUBMITTED == 0){      //IF WE ARE NOT ON THE DRAW LIST ADD US ONCE
		with(obj_draw_controller){
			ds_grid_resize(grid,ds_grid_width(grid),ds_grid_height(grid)+1);
			ds_grid_set(grid,0,ds_grid_height(grid)-1,other.id);
			ds_grid_set(grid,1,ds_grid_height(grid)-1,other.LAYERS);  //SET VALUES IN DRAW LIST
		}
		SUBMITTED = 1;
	}


}else{
	//not inside the view

	if(SUBMITTED == 1){  // IF WE ARE OUTSIDE VIEW AND STILL ON DRAW LIST REMOVE US
		RemoveTree();
		SUBMITTED = 0;
	}


}



alarm[0] = 7 + random(3); //camera moves slow and we have -100 and +100 included in our inside view check so we don't need this too often.

