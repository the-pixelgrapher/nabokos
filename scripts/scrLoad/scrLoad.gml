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




ini_close();