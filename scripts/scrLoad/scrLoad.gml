//0=locked, 1=unlocked, 2=complete
global.L00=1;
global.L01=0;
global.L02=0;
global.L03=0;
global.L04=0;
global.L05=0;
global.L06=0;
global.L07=0;
global.L08=0;
global.L09=0;
global.L10=0;
global.L11=0;
global.L12=0;
global.L13=0;
global.L14=0;
global.L15=0;
global.L16=0;
global.L17=0;
global.L18=0;
global.L19=0;
global.L20=0;

if file_exists("nabokos.ini") {
	
ini_open("nabokos.ini");
global.L00=ini_read_real("levelProgress","00",1);
global.L01=ini_read_real("levelProgress","01",0);
global.L02=ini_read_real("levelProgress","02",0);
global.L03=ini_read_real("levelProgress","03",0);
global.L04=ini_read_real("levelProgress","04",0);
global.L05=ini_read_real("levelProgress","05",0);
global.L06=ini_read_real("levelProgress","06",0);
global.L07=ini_read_real("levelProgress","07",0);
global.L08=ini_read_real("levelProgress","08",0);
global.L09=ini_read_real("levelProgress","09",0);
global.L10=ini_read_real("levelProgress","10",0);
global.L11=ini_read_real("levelProgress","11",0);
global.L12=ini_read_real("levelProgress","12",0);
global.L13=ini_read_real("levelProgress","13",0);
global.L14=ini_read_real("levelProgress","14",0);
global.L15=ini_read_real("levelProgress","15",0);
global.L16=ini_read_real("levelProgress","16",0);
global.L17=ini_read_real("levelProgress","17",0);
global.L18=ini_read_real("levelProgress","18",0);
global.L19=ini_read_real("levelProgress","19",0);
global.L20=ini_read_real("levelProgress","20",0);

ini_close();
}