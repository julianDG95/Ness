// JDG - This happens every time the text box is drawn, 
//       analagous to the step event but only when the sprite is actually drawn 


draw_set_color(c_white);
draw_set_font(fnt_textbox);
global.player_can_move = false;

// Draw Text Box
//draw_9slice(x, y, width, height, spr_textbox, 0);
//draw_sprite(spr_textbox, 0, x,y);
draw_sprite_stretched(spr_textbox, 0, x, y, width, height);
// Draw Text
//text = "Hello world! This is a test string for textbox
draw_sprite(image, 0, x, y);
imageSize = 128;
imageX = sprite_get_height(image);
imageY = sprite_get_width(image);

padding = imageSize;

drawX = x + padding;
ypadding = 20;
ypadding += imageY;
padding += imageX;
//drawY = y + padding;
drawY = y + ypadding;

draw_text_ext(drawX,drawY, text, stringHeight + ypadding, width - padding); // Function automatically wraps text
