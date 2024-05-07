if(!instance_exists(obj_textbox) and ! has_been_interacted)
{
	if(collision_circle(x,y,interact_radius,obj_player, false,true))
	{
		//has_been_interacted = true;
		key_pressed = true;
		myTextBox =  instance_create_layer(x,y, "Instances", obj_textbox,
		{
			text : "Hey kid! Welcome to this lovely world I call... \nThe park! Enjoy your stay!",
			image : spr_manny_talking,
			name : "Manny"
		});
	}
}