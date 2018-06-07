scrControl();

if drawCLevel == 1 or counter > 0
{
	  
	if yo <= 64 and counter2 == 1 //fade in animation
	{
		counter+=1/30;
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
		
		if keyActR
		{
			if global.cValid[select] = 1 and global.fadeMode="none"
			{
				
				global.cLevel = select;
				global.fadeMode="out";
				instance_create_layer(0,0,"insPostprocess",objFadeWipe);
				global.playState = 1;
				
			}
		}
		
		if keyboard_check_pressed(ord("E"))
		{
			if global.fadeMode="none"
			{
				global.cLevel = select;
				global.fadeMode="out";
				instance_create_layer(0,0,"insPostprocess",objFadeWipe);
				global.playState = 0;
			}
		}
	}
	
	if keyboard_check(ord("X")) == 1 and deleteTimer <= 60 and global.cLevelState[select] == 1
	{
		deleteTimer += 1;
	}
	if keyboard_check_released(ord("X")) == 1 or global.cLevelState[select] == 0 or 
	keyLeftP == 1 or keyRightP == 1
	{
		deleteTimer = 0;
	}
	
	if deleteTimer > 60 
	{
		file_delete(string("c") + string(select) + string(".json"));
		scrSound("error");
		scrLoad();
		scrSave();
		deleteTimer = 0;
	}
}

if drawCLevel == 0 or counter2 > 0
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