scrControl();

if drawMenuPause=1 or counter>0
{
	  
	if y<=64 and counter2=1 //fade in animation
	{
		counter+=1/25;
		easer=ease("easeoutquint",counter)*-446+446+64;
		y=ease("easeoutquint",counter)*amplify+64;
		easea=ease("easeoutquint",counter*1.33);
	}
	if drawMenuPause=1 
	{
		if y=0 and counter=1 {counter2=0;} //reset fade out animation
		if objControlsScreen.drawControls=0 and objOptions.drawOptions=0
		{
			select -= keyUpP;
			select += keyDownP;
			if keyUpP == 1 ^^ keyDownP == 1 {scrSound("tap")}
			if select>4 {select=0;}
			if select<0 {select=4;}

			if keyActP == 1 //and counter == 1
			{
				scrSound("click");
		
				if !instance_exists(objFadeWipe)
				{	
					if select=4 {global.fadeMode="outM";}			//main menu
					if select=1										//level selection
					{
						global.fadeMode="outLS";
						if room=3 {global.gotoCL=1;}
					}			
					instance_create_layer(0,-768,"insPostprocess",objFadeWipe);
				}
				
				if select=0 and counter2=0 and y=0 and counter=1	//CONTINUE
				{
					drawMenuPause=0;
				}
				
				if select=2 and objControlsScreen.counter=0 {objControlsScreen.drawControls=1;}
				if select=3 and objOptions.counter=0 
				{
					with (objOptions)
					{
						if counter2=1 and yo=64 and counter=0 and drawOptions=0
						{
							drawOptions=1;
						}
					}
				}
			}
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
		easea=1-ease("easeoutquint",counter2*1.33);
	}
	if y=64 and counter2=1 {counter=0;} //reset fade in animation
}