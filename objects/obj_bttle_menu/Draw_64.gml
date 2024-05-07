// Still need to draw the sell bar
/// Diplay current value of sell bar...
// Animate sell bar...

// We want to draw memus for GUIs here because GUI sits on top

// Display the Sell meter...
// Shows how close the player is to victory or loss
draw_text_ext(0,height / 2, "Test message", 6, 200); // Function automatically wraps text

x_pos = x;//og_x + x_padding;
y_pos = y;//og_y;// + y_padding;

// This isn't working yet, not sure exactly why - 
//    function triggers but doesn't draw textbox

draw_sprite_stretched(spr_textbox, 0, x, y, width, height);
// For element in options...
for(var i = 0; i < array_length(options); i++)
{
	show_debug_message(x_pos);
	x_pos += x_size * i;
	show_debug_message("After");
	show_debug_message(x_pos);
	// If element is hovered over
	if(i = hover){
		show_debug_message(og_x);
		show_debug_message(x);
		show_debug_message(og_y);
		show_debug_message(y);
		show_debug_message(options[i].sprite);
		num_frames = sprite_get_number(options[i].sprite);
		// Display the hover over sprite
		// Maybe skip hover sprite and rely on animation
		
		// Animate this one
		//draw_sprite(options[i].sprite, cur_frame, og_x,og_y);// x_pos, y_pos);
		//draw_sprite(options[i].sprite, cur_frame, x,y);
		frameSpeed = sprite_get_speed(options[i].sprite);
		draw_sprite(options[i].sprite, cur_frame, x_pos, y_pos);
	if (++frame_count > frameSpeed)
	{
		frame_count = 0;
		cur_frame += 1;
	}
		if (cur_frame > num_frames)
		{
			cur_frame = 0
		}
		
	} else
	{
		show_debug_message("Printing new sprite...");
		//Display static other buttons 
		draw_sprite(options[i].sprite, 0, x_pos, y_pos);
	}
		x_pos += sprite_get_width(options[i].sprite)	
	
}
