// accuracy
var target = argument0;

var dis = distance_to_object(target);
var probability = 100/(dis/gunRange);
if probability >= 90 {
	probability = 90;	
}

return probability;