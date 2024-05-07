
global.music = 0;
global.party = 
[
	{
		name: "Barth",
		hp: 100,
		hpMax: 100, 
		mp: 50, 
		mpMax: 50,
		strength: 6,
		sprites : { idle: Ness_Ref, attack: Ness_Ref, defend: Ness_Ref, down: Ness_Ref, sell: Ness_Ref},
		actions: []		
	}

]


global.enemies =
{
	manny:
		{
			name: "Manny M",
			hp: 20,
			hpMax: 30,
			mp: 0, 
			mpMax: 0,
			strength: 5,
			sprites: {idle: spr_manny_battle},
			actions: [],
			xpvalue: 15,
			AIscript : function()
			{
				
			}
		}
}

global.trashCollected = 0;
