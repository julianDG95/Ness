/// @description Insert description here
// You can write your code in this editor
if(! has_been_interacted)
{
	if(collision_circle(x,y,interact_radius,obj_player, false,true))
	{
		has_been_interacted = true;
		
		repeat(5) {
			var xx = obj_player.x + random_range(-5,5);
			var yy = obj_player.y + random_range(-16,16);
			
			var trash_select_index = irandom(array_length(trash_obj_array) - 1);
			instance_create_layer(xx, y - 20, "Instances", trash_obj_array[trash_select_index]);
		}
		
		// remove popup
		instance_destroy(popup_id);
	}
}
	
