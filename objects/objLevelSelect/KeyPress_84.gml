//---- UNLOCK AVAILABLE LEVELS ----
for (var i = 0; i < room_last-3; i++)
{
	if global.levelState[i] = 0 {global.levelState[i] = 1;}
}

scrSave();

global.levelUnlocked = room_last-4;

scrSound("click");