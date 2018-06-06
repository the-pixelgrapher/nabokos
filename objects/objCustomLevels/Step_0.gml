scrControl();

if drawCLevel == 1 or counter > 0
{
	  
	if yo <= 64 and counter2 == 1 //fade in animation
	{
		counter+=1/25;
		easer=ease("easeoutquint",counter)*-446+510;
		yo=ease("easeoutquint",counter)*amplify+64;
		easea=ease("easeoutquint",counter*1.1);
	}
	if drawCLevel == 1
	{
		if yo == 0 and counter == 1 {counter2=0;} //reset fade out animation
		if keyLeftP == 1 {select--;}
		if keyRightP == 1 {select++;}
		if select > 4 {select = 0;}
		if select < 0 {select = 4;}
		if keyLeftP == 1 or keyRightP == 1 {scrSound("tap");}
		
		if keyActP
		{
			global.cLevel = select;
			if global.cValid[global.cLevel] = 1
			{
				global.playState = 1;
				room_goto_next();
			}
		}
		
		if keyboard_check_pressed(ord("E"))
		{
			global.cLevel = select;
			global.playState = 0;
			room_goto_next();
		}
	}
}

if drawCLevel == 0 or counter2 > 0
{
	if yo >= 0 and counter == 1 //fade out animation
	{
		counter2+=1/25;
		easer=ease("easeoutquint",counter2)*446+64;
		yo=ease("easeoutquint",counter2)*amplify2;
		easea=1-ease("easeoutquint",counter2*1.1);
	}
	if yo == 64 and counter2 == 1 {counter=0;} //reset fade in animation
}