global.fadeMode = "inLS";
instance_create_layer(0, 0 ,"insPostprocess" ,objFadeWipe); //fade in animation

select = global.level; //select last played level
activd = 0;

// ---- CHECKING CURRENTY UNLOCKED LEVELS
global.levelUnlocked = 0;
for (var i = 1; i < 21; i++)
{
	if (global.levelState[i] > 0)
	{
		global.levelUnlocked += 1;
	}
}