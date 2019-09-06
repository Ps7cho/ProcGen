// setup the tile map
for (var j = 0; j < rows; j++){
	for (var i = 0; i < col; i++){	
		var val1 = scr_sn_noise(0,99,1,1,0.1,i,j,inc);
		ds_grid_set(tileMap,i,j,val1);
	}
}
