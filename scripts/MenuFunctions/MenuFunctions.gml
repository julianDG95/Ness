// 
/*struct_menu_opt = {
	name,
	funct, 
	arg,
	avail	
}

struct_bttl_menu_opt = {
	name, 
	funct,
	arg,
	sprite,
	avail
}
*/
function Menu(_x, _y, _options, _description = -1, _width = undefined, _height = undefined)
{
	// Create menu object with lower depth than anything
	with (instance_create_depth(_x,_y,-99999,oMenu))
	{
		options = _options;
		description = _description;
		var _optionCount = array_length(_options); // For scrolling purposes
		visibleOptionsMax = _optionsCount;
		
		xmargin = 10;
		ymargin = 8;
		heightLine =12;
		draw_set_font(fnt_menu)		
		//Auto width
		/*
		if (_width == undefined){
			width = 1;
			
			if (description != -1) width = max(width, string_width(_description));
			for (var i = 0; i < optionsCount; i++)
			{
				width = max(width, string_width(_options.name[0]));
			}
			
			widthFull = wdith + xmargin * 2;
			
		} else widthFull = _width;
		*/
		// Auto height JDG - Lzy, do this later
/*		if (_height == undefined)
		{
			height heightLine;
		}
*/
	}
}

function SubMenu(_options)
{
	optionsAbove[subMenu] = options;
	subMenuLevel++;
	options = _options;
	hover = 0;
}

function MenuGoBack()
{
	subMenuLevel--;
	options = optionsAbove[subMenu]
	hover = 0;
}


// This is different for a few reasons
// 1. Custom sprites for battles
// 2. Different highlighting than normal menus
// 3. 
function BattleMenu(_x, _y, _options, _hp = undefined)
{
	// Create menu object with lower depth than anything
	with(instance_create_layer(_x,_y, "Instances", obj_bttle_menu, {}))
	//with (instance_create_depth(_x,_y,-99999,obj_bttle_menu))
	{
		//x_pos = _x;
		//y_pos = _y;
		og_x = _x;
		og_y = _y;
		
		options = _options; // should be of type struct_bttl_menu_opt
							// Options will for now be Sell, Skills, Items, Leave Them Alone (Flee)
		//description = _description;
		var _optionCount = array_length(_options); // 
		sellVal = _hp; // pass the 'HP' to the battle 
	}
}
