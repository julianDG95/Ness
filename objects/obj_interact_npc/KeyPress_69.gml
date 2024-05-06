
if(! has_been_interacted)
{
	if(collision_circle(x,y,interact_radius,obj_player, false,true))
	{
		myTextBox =  instance_create_layer(x,y, "Instances", obj_textbox,
		{
			text : "Test message should never be visible",
			image : spr_trash_degen_talking,
			name : "Trash Man Tom"
		});
	}
}