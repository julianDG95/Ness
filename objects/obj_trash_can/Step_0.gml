/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
depth = -bbox_bottom;

if (! has_been_interacted){
	if(collision_circle(x, y, interact_radius, obj_player, false, true))
	{
		popup_id.visible = true;
	} else { 
		popup_id.visible = false;
	}
}
draw_set_colour(c_black);//Or any other color, I choose black on a whim
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);