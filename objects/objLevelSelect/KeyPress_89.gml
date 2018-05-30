//---- UNLOCK AND COMPLETE AVAILABLE LEVELS ----
for (var i = 0; i < room_last-4; i++)
{
	global.levelState[i] = 2;
}

scrSave();

global.levelUnlocked = room_last-5;

scrSound("click");