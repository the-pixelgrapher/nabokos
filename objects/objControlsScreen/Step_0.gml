if drawControls=1 or counter>0
{
	scrControl();
	if yo<=64 and counter2=1 //fade in animation
	{
		counter+=1/25;
		easer=ease("easeoutquint",counter)*-446+510;
		yo=ease("easeoutquint",counter)*amplify+64;
		easea=ease("easeoutquint",counter*1.1);
	}
	if drawControls=1 and counter=1
	{
		if yo=0 and counter=1 {counter2=0;} //reset fade out animation
		if keyActP == 1 or keyboard_check_pressed(vk_escape)
		{
			scrSound("click")
			drawControls=0;
			global.showControls=0;
		}
	}
}

if drawControls=0 or counter2>0
{
	if yo>=0 and counter=1 //fade out animation
	{
		counter2+=1/25;
		easer=ease("easeoutquint",counter2)*446+64;
		yo=ease("easeoutquint",counter2)*amplify2;
		easea=1-ease("easeoutquint",counter2*1.1);
	}
	if yo=64 and counter2=1 {counter=0;} //reset fade in animation
}