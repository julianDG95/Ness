/// @description Step event for Barth (Player)



// Key setup
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

// Speed of player
xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

if place_meeting(x + xspd, y, obj_wall) == true
	xspd=0;

if place_meeting(x, y + yspd, obj_wall)	== true
	yspd=0;


if yspd == 0 and xspd == 0 face = last_face;

if yspd == 0 
{
	if xspd > 0 { face = RIGHT; last_face = IDLE_RIGHT;} 
	if xspd < 0 { face = LEFT; last_face = IDLE_LEFT;}
}

if xspd > 0 && face == LEFT face = RIGHT;
if xspd < 0 && face == RIGHT face = LEFT;


if xspd == 0
{
	if yspd > 0 {face = DOWN; last_face = IDLE_DOWN;}
	if yspd < 0 {face = UP; last_face = IDLE_UP;} 
}

// Player direction
x += xspd;
y += yspd;

// Player Collisions
mask_index = sprite[IDLE];

if yspd > 0 && face == UP face = DOWN;
if yspd < 0 && face == DOWN face = UP;

sprite_index = sprite[face];

// Force player to have maximum depth
depth = -bbox_bottom;