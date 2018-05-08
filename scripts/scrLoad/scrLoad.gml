
ini_open("nabokos.ini");

for 
(
	var i = 0; 
	i < 21; 
	i += 1;
)
{
	if i=0 {global.levelState[0]=ini_read_real("levelProgress",string(0),real(1));}
	if i>0 {global.levelState[i]=ini_read_real("levelProgress",string(i),real(0));}
}

ini_close();