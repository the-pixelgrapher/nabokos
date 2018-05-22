select=0;
amplify=128;
easea=0;
easex=0;
easeP=0;
t=0;
t2=0;
progDelay=60;

// ---- CHECKING CURRENTY UNLOCKED LEVELS
global.levelUnlocked = -1;
global.levelComplete = 0;
for (var i = 0; i < room_last-3; i++)
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

global.level = global.levelUnlocked;

if global.splashPlayed=0
{
	instance_create_layer(0,0,"insPostprocess",objFadeINTitle);
}

//ANTIALIASING SETUP
if global.aaSet=0
{
	alarm[0]=1;
	alarm[1]=2;
	global.aaSet=1;
}

instance_create_layer(0,0,"insPostprocess",objControlsScreen);

x=212;
y=361;