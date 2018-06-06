scrSaveLevel();
scrSave();

if global.cValid[global.cLevel] = 1
{
	global.playState=1;
	scrLoadLevel();
	instance_destroy(objLevelEdit);
}