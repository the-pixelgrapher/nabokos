if drawOptions == 1 or counter > 0
{
	if yo <= 64 and counter2 == 1 //fade in animation
	{
		counter+=1/30;
		easer=ease("easeoutquint",counter)*-446+510;
		yo=ease("easeoutquint",counter)*amplify+64;
		easea=ease("easeoutquint",counter*1.1);
	}
	if drawOptions == 1
	scrControl();
	{
		if yo == 0 and counter == 1 {counter2=0;} //reset fade out animation
		if keyUpP == 1 {select--;}
		if keyDownP == 1 {select++;}
		if select > 3 {select = 0;}
		if select < 0 {select = 3;}
		if keyUpP == 1 or keyDownP == 1 {scrSound("tap");}
		
		if keyActP and counter == 1
		{
			if select == 0
			{
				global.stepMovement = !global.stepMovement;
			}
			if select == 1 and global.invisCrates == 0
			{
				global.rotationMode = !global.rotationMode;
			}
			if select == 2
			{
				global.invisCrates = !global.invisCrates;
				global.rotationMode = 0;
			}
			if select == 3
			{
				global.music = !global.music;
				if global.music == 1 
				{
					scrSound("music");
					audio_sound_gain(sndMusic,0.25,500);
				}
				else
				{
					audio_sound_gain(sndMusic,0.0,500);
				}
				
			}
			scrSound("click");
			scrSave();
		}
	}
}

if drawOptions == 0 or counter2 > 0
{
	if yo >= 0 and counter == 1 //fade out animation
	{
		counter2+=1/30;
		easer=ease("easeoutquint",counter2)*446+64;
		yo=ease("easeoutquint",counter2)*amplify2;
		easea=1-ease("easeoutquint",counter2*1.1);
	}
	if yo == 64 and counter2 == 1 {counter=0;} //reset fade in animation
}