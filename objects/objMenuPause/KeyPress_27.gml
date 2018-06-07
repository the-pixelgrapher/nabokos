if objControlsScreen.drawControls=0 and keyActP == 0 and objOptions.drawOptions=0
{
	if (counter2=0 and y=0 and counter=1) or (counter2=1 and y=64 and counter=0) 
	{
		drawMenuPause=!drawMenuPause;
	}
	
	scrSound("click")
}