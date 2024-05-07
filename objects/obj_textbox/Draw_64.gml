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

padding = 5;
ypadding = 5;

if curFrameIndex > numFrames
	curFrameIndex = 0; // Back to the first

draw_sprite(image, curFrameIndex, x + padding, y + ypadding)	


if (++curFrames > frameSpeed)
{
	curFrames = 0;
	curFrameIndex += 1;
}
imageSize = 128;
imageX = sprite_get_height(image);
imageY = sprite_get_width(image);

padding = imageSize;

drawX = x + padding;
drawX += imageX;
ypadding = 20;
//ypadding += imageY;
padding += imageX;
//drawY = y + padding;
drawY = y + ypadding;


if (!pause and charCur < string_length(text))
{
	if(charCur % 2 == 0)
	audio_play_sound(snd_talking, 10, false, 1, 0, 10);
	charCur += charSpeed;
	_str = string_copy(text, 1, charCur);
	switch(string_char_at(_str, charCur)){
		case ",": pause = true; alarm[1] = 15; break;
		case ".":
		case "?":
		case "!": pause = true; alarm [1] = 25; break;
	}
}

draw_text_ext(drawX,drawY, _str, stringHeight + ypadding, width - padding); // Function automatically wraps text

