global.playState=1;
scrSound("load");
scrLoad();

//global.fadeMode = "inLS";
//instance_create_layer(0, 0 ,"insPostprocess" ,objFadeWipe); //fade in animation

select = global.level; //select last played level
activd = 0;

t = 0;
ea = 0;
ex = 0;
amp = 96;

layer_create(101,"GUI");
instance_create_layer(0,0,"GUI",objCustomLevels);

// ---- CHECKING CURRENTY UNLOCKED LEVELS
global.levelUnlocked = -1;
global.levelComplete = 0;
for (var i = 0; i < room_last-4; i++)
{
	if (global.levelState[i] > 0)
	{
		global.levelUnlocked += 1;
	}
	if (global.levelState[i] = 2)
	{
		global.levelComplete += 1;
	}
}