ini_open("nabokos.ini");

	if ini_section_exists("levelProgress") {ini_section_delete("levelProgress");}
	
	ini_write_real("levelProgress","20",global.L20);
	ini_write_real("levelProgress","19",global.L19);
	ini_write_real("levelProgress","18",global.L18);
	ini_write_real("levelProgress","17",global.L17);
	ini_write_real("levelProgress","16",global.L16);
	ini_write_real("levelProgress","15",global.L15);
	ini_write_real("levelProgress","14",global.L14);
	ini_write_real("levelProgress","13",global.L13);
	ini_write_real("levelProgress","12",global.L12);
	ini_write_real("levelProgress","11",global.L11);
	ini_write_real("levelProgress","10",global.L10);
	ini_write_real("levelProgress","09",global.L09);
	ini_write_real("levelProgress","08",global.L08);
	ini_write_real("levelProgress","07",global.L07);
	ini_write_real("levelProgress","06",global.L06);
	ini_write_real("levelProgress","05",global.L05);
	ini_write_real("levelProgress","04",global.L04);
	ini_write_real("levelProgress","03",global.L03);
	ini_write_real("levelProgress","02",global.L02);
	ini_write_real("levelProgress","01",global.L01);
	ini_write_real("levelProgress","00",global.L00);
	
ini_close();