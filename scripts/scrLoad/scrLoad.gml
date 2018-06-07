ini_open("nabokos.ini");

for 
(
	var i = 0; 
		i < 21; 
		i += 1;
)
{
	global.levelState[i] = clamp(ini_read_real("levelProgress",string(i),0), 0, 2);
}
global.levelState[0] = clamp(ini_read_real("levelProgress",string(0),0), 1, 2);

for (var cl = 0; cl < 5; cl++)
{
	global.cLevelState[cl] = file_exists(string("c") + string(cl) + string(".json"));
	global.cValid[cl] = clamp(ini_read_real("cLevelValidity",string("cValid")+string(cl),0), 0, 1);
	if !file_exists(string("c") + string(cl) + string(".json"))
	{
		global.cValid[cl] = 0;
	}
}

global.stepMovement = ini_read_real("options","stepMovement",0);
global.rotationMode = ini_read_real("options","easyRotation",0);
global.invisCrates = ini_read_real("options","invisiCrates",0);
global.sound = ini_read_real("options","sound",1);

ini_close();