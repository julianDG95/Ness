/// @description Step event for Barth (Player)


// Key setup
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

// Speed of player
if(global.player_can_move)
{
	xspd = (right_key - left_key) * move_spd;
	yspd = (down_key - up_key) * move_spd;
}

// Collisions with wall objects (Collidable objects inherit from walls)
if place_meeting(x + xspd, y, obj_wall) == true or place_meeting(x + xspd, y, obj_interact) == true
	xspd=0;

if place_meeting(x, y + yspd, obj_wall)	== true or place_meeting(x, y + yspd, obj_interact)	== true
	yspd=0;


// Determine which facing sprite to use and idle face using last_face
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

// Force the player to always use collision mask for down idle for simplicity
mask_index = sprite[IDLE_DOWN];

if yspd > 0 && face == UP face = DOWN;
if yspd < 0 && face == DOWN face = UP;

// Actually change the sprite to the array setup in the create event for player
sprite_index = sprite[face];

// Depth setup for origin y axis
// Depth works by having lower depth objects drawn on top of higher depth objects
depth = -bbox_bottom;

