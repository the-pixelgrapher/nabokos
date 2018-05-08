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
	
ini_close();