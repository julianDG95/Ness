
if(!instance_exists(obj_textbox) and ! has_been_interacted)
{
	if(collision_circle(x,y,interact_radius,obj_player, false,true))
	{
		//has_been_interacted = true;
		key_pressed = true;
		myTextBox =  instance_create_layer(x,y, "Instances", obj_textbox,
		{
			text : "Kid will you shuddafagup? I'm on smoko",
			image : spr_trash_degen_talking,
			name : "Trash Man Tom"
		});
	}
		
	// remove popup
	//instance_destroy(popup_id);
}