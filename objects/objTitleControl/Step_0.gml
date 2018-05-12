scrControl();

if keyUpP == 1 {select--;}
if keyDownP == 1 {select++;}
if keyUpP == 1 ^^ keyDownP == 1 {scrSound("tap")}
if select>4 {select=0;}
if select<0 {select=4;}

if keyActP == 1
{
	scrSound("click")
		
	if !instance_exists(objFadeWipe)
	{
		if select=0 {global.fadeMode="outT";} //main menu
		if select=1 {global.fadeMode="outLS";} //level selection
		instance_create_layer(0,-768,"insPostprocess",objFadeWipe);
	}
	if select=4 {game_end();}
}

t+=1/120;

easex=ease("easeoutquint",t)*amplify-amplify;
easea=ease("easeinoutcubic",t*3);

progDelay-=1;
if progDelay<1 
{
	t2+=1/120;
	easeP=ease("easeoutquint",t2);
}