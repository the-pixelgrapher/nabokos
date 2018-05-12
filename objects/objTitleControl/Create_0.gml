select=0;
amplify=128;
easea=0;
easex=0;
easeP=0;
t=0;
t2=0;
progDelay=60;

// ---- CHECKING CURRENTY UNLOCKED LEVELS
global.levelUnlocked = 0;
for (var i = 1; i < 21; i++)
{
	if (global.levelState[i] > 0)
	{
		global.levelUnlocked += 1;
	}
}
global.level = global.levelUnlocked;

if global.splashPlayed=0
{
	instance_create_layer(0,0,"insPostprocess",objFadeINTitle);
}

if global.aaSet=0
{
	alarm[0]=1;
	alarm[1]=2;
	global.aaSet=1;
}

x=212;
y=361;