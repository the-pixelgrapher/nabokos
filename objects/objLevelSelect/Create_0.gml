global.fadeMode = "inLS";
instance_create_layer(0, 0 ,"insPostprocess" ,objFadeWipe); //fade in animation

select = global.level; //select last played level
activd = 0;

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