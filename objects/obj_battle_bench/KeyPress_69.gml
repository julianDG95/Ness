	if(collision_circle(x,y,interact_radius,obj_player, false,true))
	{
		NewEncounter([global.enemies.manny], spr_battle_background);
		// remove popup
		instance_destroy(popup_id);
	}
	
