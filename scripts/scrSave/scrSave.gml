ini_open("nabokos.ini");

	if ini_section_exists("levelProgress") {ini_section_delete("levelProgress");}
	for 
	(
		var i = 0; 
			i < 21; 
			i += 1;
	)
	{
		ini_write_real("levelProgress",string(i),global.levelState[i]);
	}
	
	if ini_section_exists("cLevelValidity") {ini_section_delete("cLevelValidity");}
	for (var cl = 0; cl < 5; cl++)
	{
		ini_write_real("cLevelValidity",string("cValid")+string(cl),global.cValid[cl]);
	}
	
	if ini_section_exists("options") {ini_section_delete("options");}
	ini_write_real("options","stepMovement",global.stepMovement);
	ini_write_real("options","easyRotation",global.rotationMode);
	ini_write_real("options","invisiCrates",global.invisCrates);
	ini_write_real("options","sound",global.music);
	
ini_close();