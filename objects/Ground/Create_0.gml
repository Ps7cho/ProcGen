/// @description 
tileWidth = 200
tileHeight = 150
col = floor(room_width/tileWidth)+1;
rows = floor(room_height/tileHeight)+1;

GenDisX = floor((room_width/2)/tileWidth);
GenDisY = floor((room_height/2)/tileHeight)+1;

seed = 486548135
randomize();
xpos = 0;
inc = 0
water = 30;
ground = 40;

globalvar cullDistance ;
cullDistance = 1500;

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
		//make the walls and doors contextual so they know what direction they should be facing
		//or if they should be corners.
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

//use noise to fill map with values
SetupTileMap();
TileGenerationX = max(0,GenDisX - 100);
TileGenerationY = max(0,GenDisY - 100);


//Add in the buildings to the tile map
ds_grid_set_grid_region(tileMap,outpostMap,0,0,outpostWidth,outpostHeight,(col/2)-floor(outpostWidth/2),(rows/2)-floor(outpostHeight/2));

GroundTiles();