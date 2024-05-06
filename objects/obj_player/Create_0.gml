/// @description Insert description here
// You can write your code in this editor
xspd = 0;
yspd = 0;

move_spd = 1;
global.player_can_move = true;
//////////////////////////////////////
// Setup sprite arrays for dynamic sprite config
sprite[RIGHT] = spr_barth_new_right;
sprite[UP] = spr_barth_new_up;
sprite[LEFT] = spr_barth_new_left;
sprite[DOWN] = spr_barth_new_down;

sprite[IDLE_DOWN] = spr_barth_new_down_idle;
sprite[IDLE_LEFT] = spr_barth_new_left_idle;
sprite[IDLE_RIGHT] = spr_barth_new_right_idle;
sprite[IDLE_UP] = spr_barth_new_up_idle;
/*
sprite[RIGHT] = spr_barth_right;
sprite[UP] = spr_barth_up;
sprite[LEFT] = spr_barth_left;
sprite[DOWN] = spr_barth_down;

sprite[IDLE_DOWN] = spr_barth_idle_down;
sprite[IDLE_LEFT] = spr_barth_idle_left;
sprite[IDLE_RIGHT] = spr_barth_idle_right;
sprite[IDLE_UP] = spr_barth_idle_up;
*/

// Init facing variables
face = DOWN;
last_face = IDLE_DOWN;