/// @description 
camera = view_camera[0];
screenWidth = camera_get_view_width(camera)
screenHeight = camera_get_view_height(camera)
viewRight = (screenWidth*0.95);
viewBottom = (screenHeight*0.85);



#region			//selecting 
var hover = instance_place(mouse_x,mouse_y,selectables); 
if hover != noone{
	if !shooting {  //locked on
		highlight = hover;
		if highlight.object_index = Minion{
			Target = hover;
		}
	}
}else{
	if Target != noone {
		highlight = Target;	
	}
}
if highlight != noone{
	//show stats 
	with highlight{
	draw_rectangle_color(other.viewRight-(sprite_width)*other.scalez,other.viewBottom-(sprite_height)*other.scalez,
						other.viewRight+(sprite_width)*other.scalez,other.viewBottom+(sprite_height)*other.scalez,
						c_dkgray,c_dkgray,c_dkgray,c_dkgray,false);
	draw_sprite_ext(sprite_index,image_index,other.viewRight,other.viewBottom,1,1,0,c_white,1);
	draw_text(other.viewRight,other.viewBottom,myName); //name
	draw_text(other.viewRight-50,other.viewBottom-50,other.probability);
	if Health > -1 {
		draw_healthbar(other.viewRight-sprite_width/3,other.viewBottom+sprite_height/2,
						other.viewRight+(sprite_width/3),other.viewBottom+(sprite_height/2)+10,
						Health,c_red,c_green,c_green,1,true,true,);
		}
	}
}
#endregion
#region			//Inventory

if inventory{
	if inventoryOut > 93{  // % of screen witdth x will end at.
		inventoryOut --;
	}
}else{
	if inventoryOut < 100{
		inventoryOut += 2;	
	}
}
var x1 = screenWidth*(inventoryOut/100);
var y1 = (screenHeight*0.3);
draw_rectangle_color(x1,y1,screenWidth,screenHeight*0.7,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false);
var xx = ((x1+4)+sprite_get_width(gunSprite)/4);
var yy = ((y1+4)+sprite_get_height(gunSprite)/4);
draw_sprite_ext(gunSprite,0,xx,yy,0.5,0.5,0,c_white,1);

#endregion