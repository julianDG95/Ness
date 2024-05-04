draw_sprite(spr_battle_background,0,x,y);

var _unitWithCurrentTurn = unitTurnOrder[turn].id;

for (var i = 0; i < array_length(unitRenderOrder); i++)
{
	with (unitRenderOrder[i])
	{
		draw_self();
	}
	
}
draw_sprite_stretched(spr_ui_box, 0,x+75,y+155,170,60);
draw_sprite_stretched(spr_ui_box, 0,x,y+155,74,60);

#macro COLUMN_ENEMY 15
#macro COLUMN_NAME 90
#macro COLUMN_HP 160
#macro COLUMN_MP 220


//draw_set_font(fnM3x6);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_gray);
draw_text(x+COLUMN_ENEMY,y+170,"ENEMY");
draw_text(x+COLUMN_NAME, y+170, "NAME");
draw_text(x+COLUMN_HP,y+170, "HP");
draw_text(x+COLUMN_MP,y+170,"MP");

