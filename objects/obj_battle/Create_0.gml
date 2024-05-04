
audio_stop_sound(global.music);
global.music = audio_play_sound(snd_battle, 0, true);
instance_deactivate_all(true);

units = [];
turn = 0;
unitTurnOrder = [];
unitRenderOrder = [];

// Create the objects for enemies and (Party?)
for (var i = 0; i < array_length(enemies); i++)
{

	enemyUnits[i] = instance_create_depth(x+50+(i*10), y+68+(i*20), depth-10, obj_battle_enemy, enemies[i]);
	array_push(units, enemyUnits[i]);
}

for (var i = 0; i < array_length(global.party); i++)
{

	partyUnits[i] = instance_create_depth(x+70-(i*10), y+69+(i*15), depth-10, obj_battle_player, global.party[i]);
	array_push(units, partyUnits[i]);
}

//Shuffle turn order
unitTurnOrder = array_shuffle(units);

//Get render order
RefreshRenderOrder = function()
{
	unitRenderOrder = [];
	array_copy(unitRenderOrder,0,units,0,array_length(units));
	array_sort(unitRenderOrder, function(_1,_2)
	{
		return _1.y - _2.y;
	});
};
RefreshRenderOrder();
