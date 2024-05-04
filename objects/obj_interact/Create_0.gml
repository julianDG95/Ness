/// @description Insert description here
// You can write your code in this editor

popup_id = instance_create_layer(x,y - 16, layer, obj_popup);
interact_radius = 15;

has_been_interacted = false;

with(popup_id) {
	visible = false;	
}

popup_id.visible = false;