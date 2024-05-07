//text = "Hello world! This is a test string for textbox.";
boxWidth = sprite_get_width(spr_textbox);
stringHeight = string_height(text);

numFrames = sprite_get_number(image);
frameSpeed = sprite_get_speed(image);

curFrames = 0;
curFrameIndex = 0;
/*
enum MSG {
		text, 
		name, 
		image 
}
*/
io_clear();
var guiH = display_get_gui_height();
var guiW = display_get_gui_width();

var _str = "";

height = floor(guiH * 0.45); // Make height 45% of screen size... 
width = guiW;
x = 0;
y = guiH - height;
padding = 0;

charSpeed = 0.25;
charCur = 1;

pause = false;