/// @description Insert description here
// You can write your code in this editor
/*
Test code for functions.....
TODO Remove at some point...
*/
/*
struct_bttl_menu_opt = {
	name, 
	funct,
	arg,
	sprite,
	avail
}*/
BattleMenu(x,y,
[
  {
  name: "Sell",
  funct: battleSell,
  arg: [],
  sprite: spr_battle_sell,
  avail: true
  },
  {
  name: "Item",
  funct: battleSell,
  arg: [],
  sprite: spr_battle_item,
  avail: true
  }
], 50);
