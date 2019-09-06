//Make the instnaces from the map
for (var j = TileGenerationX; j < GenDisX+100; j++){
	for (var i = TileGenerationY; i < GenDisY; i++){	
		xpos = (i*tileWidth)+tileWidth/2;
		ypos = (j*tileHeight)+tileHeight/2;
		var val = ds_grid_get(tileMap,i,j);
		if val <= water{
			var tile = instance_create_layer(xpos,ypos,"Water",waterTile);
			tile.image_index = floor(val/tile.image_number);
		}else if val >= ground and val < 99{
			var tile = instance_create_layer(xpos,ypos,"Ground",groundTile);
			tile.image_index = irandom(tile.image_number) //floor((val-ground)/tile.image_number);
			instance_deactivate_object(tile);
		}else if val >= 100{
			if val == 100 instance_create_layer(xpos,ypos,"Building",floorTile);
			if val == 101 instance_create_layer(xpos,ypos,"Building",wallTile);
			if val == 102 instance_create_layer(xpos,ypos,"Building",doorTile);
			if val == 103 instance_create_layer(xpos,ypos,"Building",doorTile1);
			if val == 104 instance_create_layer(xpos,ypos,"Building",wallTile1);
		}else{//sand
			var tile = instance_create_layer(xpos,ypos,"Sand",sandTile1);
			tile.image_index = irandom(tile.image_number);
			instance_deactivate_object(tile);
		}
	}
}