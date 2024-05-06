//text = "Hello world! This is a test string for textbox.";
boxWidth = sprite_get_width(spr_textbox);
stringHeight = string_height(text);

enum MSG {
		text, 
		name, 
		image 
}

var guiH = display_get_gui_height();
var guiW = display_get_gui_width();


height = floor(guiH * 0.45); // Make height 45% of screen size... 
width = guiW;
x = 0;
y = guiH - height;
padding = 0;