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
	
ini_close();