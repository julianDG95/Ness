if (active)
{
	//////////////////////////////////////////////////////
	// Currently enter is being used to select, probably 
	//   want to rebind this somehwere else
	hover += keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
	if (hover > array_length(options)-1){ 
		hover = 0;
		cur_frame = 0;
	}
	
	if (hover < 0){
		hover = array_length(options)-1;
		cur_frame = 0;
	}
	//////////////////////////////////////////////
	
	
	//////////////////////////////////////////////////////
	// Select the hovered element 
	if (keyboard_check_pressed(vk_enter))
	{
		if (array_length(options[hover]) > 1) && (options[hover].avail == true){
			if (options[hover].funct != -1) 
				script_execute_ext(_func,options[hover].arg); 
			else 
				_func();
		}
	}
	//////////////////////////////////////////////
	
	///////////////////////////////////////////////////////
	// Go back...
	if(keyboard_check_pressed(vk_escape))
	{
		if (subMenuLevel > 0) MenuGoBack();
	}
	///////////////////////////////////////////////
	
}