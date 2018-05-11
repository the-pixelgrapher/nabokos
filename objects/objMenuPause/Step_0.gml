scrControl();

if drawMenuPause=1 or counter>0
{
	  
	if y<=64 and counter2=1 //fade in animation
	{
		counter+=1/25;
		easer=ease("easeoutquint",counter)*-446+446+64;
		y=ease("easeoutquint",counter)*amplify+64;
		easea=ease("easeoutquint",counter*1.1);
	}
	if drawMenuPause=1 
	{
		if y=0 and counter=1 {counter2=0;} //reset fade out animation
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
				if select=0 {global.fadeMode="outM";} //main menu
				if select=1 {global.fadeMode="outLS";} //level selection
				instance_create_layer(0,-768,"insPostprocess",objFadeWipe);
			}
			if select=4 {game_end();}
			drawMenuPause=0;
		}
	}
}

if drawMenuPause=0 or counter2>0
{
	if y>=0 and counter=1 //fade out animation
	{
		counter2+=1/25;
		easer=ease("easeoutquint",counter2)*446+64;
		y=ease("easeoutquint",counter2)*amplify2;
		easea=1-ease("easeoutquint",counter2*1.1);
	}
	if y=64 and counter2=1 {counter=0;} //reset fade in animation
}