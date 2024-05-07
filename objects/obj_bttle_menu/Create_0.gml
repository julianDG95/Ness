//global.player_can_move = false;
io_clear();
var guiH = display_get_gui_height();
var guiW = display_get_gui_width();

frame_count = 0;
height = floor(guiH * 0.45); // Make height 45% of screen size... 
width = guiW;
x = 0;
y = guiH - height;
padding = 0;
hover = 0; // Currently active menu option
active = true; // If menu is active
subMenuLevel = 0; // Submenu level - primarily for items and skills 

x_pos = 0;// x_pos;
y_pos = 0;
og_y = y_pos;

x_padding = 50;
y_padding = 50;

x_size = 15;

cur_frame = 0;
num_frame = 0;

var guiH = display_get_gui_height();
var guiW = display_get_gui_width();


height = floor(guiH * 0.45); // Make height 45% of screen size... 
width = guiW;
x = 0;
y = guiH - height;