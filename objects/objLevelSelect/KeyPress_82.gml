//---- RESET STATE OF ALL LEVELS ----
for (var i = 0; i < 21; i++)
{
	global.levelState[i] = 0;
}
global.levelState[0] = 1;

scrSave();

levelUnlocked = 0;
select = 0;

scrSound("click");