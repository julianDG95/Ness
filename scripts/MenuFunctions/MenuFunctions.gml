/*
function Menu(_x, _y, _options, _description = -1, _width = undefined, _height = undefined)
{
	with (instance_create_depth(_x,_y,-99999,oMenu):
	{
		options = _options;
		description = _description;
		var _optionCount = array_length(_options);
		visibleOptionsMax = _optionsCount;
		
		xmargin = 10;
		ymargin = 8;
		heightLine =12;
		
		//Auto width
		if (_width == undefined){
			width = 1;
			if (description != -1) width = max(width, string_width(_description));
			for (var i = 0; i < optionsCount; i++)
			{
				width = max(width, string_width(_options[i][0]));
			}
			widthFull = wdith + xmargin * 2;
		} else widthFull = _width;
	}
}
*/