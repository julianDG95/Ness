/// @description Insert description here
// You can write your code in this editor
if(! has_been_interacted)
{
	if(collision_circle(x,y,interact_radius,obj_player, false,true))
	{
		has_been_interacted = true;
		
		repeat(15) {
			var xx = obj_player.x + random_range(-16,16);
			//var trash_select_index = irandom(array_length(trash_obj_array - 1));
			repeat(5) {instance_create_layer(xx, y, "Instances", obj_chewed_gum);}
		}
		
		// remove popup
		instance_destroy(popup_id);
	}
}
	
