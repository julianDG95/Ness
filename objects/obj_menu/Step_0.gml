/// @description Insert description here
// You can write your code in this editor
if (active)
{
	hover += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	if (hover > array_length(options)-1) hover = 0;	
	if (hover < 0) hover = array_length(options)-1;

	if (keyboard_check_pressed(vk_enter))
	{
		if (array_length(options[hover]) > 1) && (options[hover].avail == true){
			if (options[hover].funct != -1) script_execute_ext(_func,options[hover].arg); else _func();
		}
	}

	if(keyboard_check_pressed(vk_escape))
	{
		if (subMenuLevel > 0) MenuGoBack();
	}
}