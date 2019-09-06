/// @description init tree
image_speed = 0;
event_inherited();

//draw shadow
//top = instance_create_layer(x,y,"Over",TreeTop);
//top.image_index = id.image_index;

myName = "Tree";
//random amount of layers
LAYERS = 3+(floor(random(9))); // at the most 9

//used for off-screen clearing from the draw list
SUBMITTED = 0;
sprite_collision_mask(0, false, 0, 0, 0, 0, 0, bboxkind_precise, 0);
object_set_solid(objTrunk,true);
//create an array with random offset angles to make trees less uniform
var i = LAYERS+1;
repeat(i+1)
   {
   addang[i] = random(30)-15;;
   i -= 1;
   }

   //start checking if we're on-screen
  alarm[0] = 1;


