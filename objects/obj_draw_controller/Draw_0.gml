/// @description draw on-screen trees

if(ds_grid_height(grid) > 0){// If one or more treez is submitting it's ID / LAYERS

	var teez = ds_grid_height(grid); //storing this for simplicity
	var topheight = ds_grid_get_max(grid, 1, 0, 1, ds_grid_height(grid)); //what is the highest layer a tree has submitted to the grid


	for(i=1;i<topheight+1;i++;){ // work our way up the layers one by one
		for(ii=0;ii<teez;ii++;){  //check trees in list to see if they have a sprite on this layer


			if( ds_grid_get(grid,0,ii) != 0){ // double check that we haven't been marked for removal (off screen)
				if(ds_grid_get(grid,0,ii).LAYERS >= i){ // does this tree even have a layer as high as the one we're checking to draw?

					//scaling based on tree size
					var leafsize = 0.2+ (abs(ds_grid_get(grid,0,ii).LAYERS-i)*0.1);

					//offsets for 3D effect
					var dirz,new_x,new_y,diz;

					var XWView = __view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )*0.5);
					var YWView = __view_get( e__VW.YView, 0 )+(__view_get( e__VW.HView, 0 )*1.2);
					var TreeX = ds_grid_get(grid,0,ii).x;
					var TreeY = ds_grid_get(grid,0,ii).y;

					dirz = point_direction  (XWView,YWView,TreeX,TreeY);// direction from centerview to tree base
					diz =   point_distance(XWView,YWView,TreeX,TreeY); // distance from centerscreen to tree base
			
					//final position
					new_x = TreeX + lengthdir_x(i*(diz*0.02),dirz); // extend out at that direction, a distance that is determined based off a combination of distance to center and what layer we are on
					new_y = TreeY + lengthdir_y(i*(diz*0.02),dirz);

					//draw tree (rotate each leaf a little bit to make it look less uniform)
					draw_sprite_ext(spr_tree,0,new_x,new_y,leafsize,leafsize,0+ds_grid_get(grid,0,ii).addang[i],c_white,1); // the angle is grabbed from a random local array we defined for each trunk

				}
			}
		}//end for
	}//end for

	//clip out off-screen trees
	ds_grid_sort(grid,0,false); // put the ones to be removed at the bottom of the list
	if(ds_grid_get(grid,0,ds_grid_height(grid)-1) == 0 and ds_grid_height(grid) > 1){ // if the very bottom one is to be removed
		ds_grid_resize(grid,ds_grid_width(grid),ds_grid_height(grid)-1);// remove it
	}
}
