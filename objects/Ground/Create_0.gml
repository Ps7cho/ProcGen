/// @description 
tileWidth = 200
tileHeight = 150
col = floor(room_width/tileWidth);
rows = floor(room_height/tileHeight)+1;

seed = 486548135
randomize();
xpos = 0;
inc = 0
water = 30;
ground = 40;

JsonNames();

scr_sn_init() //smooth noise 
tileMap = ds_grid_create(col,rows);

//Main Outpost MAP
var outpostWidth = 7;
outpostHeight = 6;
outpostMap = ds_grid_create(outpostWidth, outpostHeight);

for (var i = 0; i <  outpostWidth; i++){
	for (var j = 0; j < outpostHeight; j++){
		if j = 0 or j = outpostHeight-1{
			if i = floor(outpostWidth/2){
				ds_grid_set(outpostMap,i,j,102); //Door	
			}else{
				ds_grid_set(outpostMap,i,j,101); //wall	
			}
		}else if i = 0 or i = outpostWidth-1{
			if j = floor(outpostHeight/2){
				ds_grid_set(outpostMap,i,j,103); //Door	Virtical
			}else{
				ds_grid_set(outpostMap,i,j,104); //wall	Virtical
			}
		}else{
			ds_grid_set(outpostMap,i,j,100);
		}
		//add walls and doors and outpost fixings on 101+
	}
}

//create team areas
x1 = room_width/2;
y1 = room_height/4;
x2 = room_width/4;
y2 = room_height*0.75;
x3 = room_width*0.75;
y3 = room_height*0.75;

instance_create_layer(x1,y1,"Ground",Team1);
instance_create_layer(x2,y2,"Ground",Team2);
instance_create_layer(x3,y3,"Ground",Team3);


// setup the tile map
for (var j = 0; j < rows; j++){
	for (var i = 0; i < col; i++){	
		var val1 = scr_sn_noise(0,99,1,1,0.1,i,j,inc);
		ds_grid_set(tileMap,i,j,val1);
	}
}

//Add in the buildings to the tile map
ds_grid_set_grid_region(tileMap,outpostMap,0,0,outpostWidth,outpostHeight,(col/2)-floor(outpostWidth/2),(rows/2)-floor(outpostHeight/2));


//Make the instnaces from the map
for (var j = 0; j < rows; j++){
	for (var i = 0; i < col; i++){	
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