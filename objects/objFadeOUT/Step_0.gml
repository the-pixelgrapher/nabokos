/// @description transition animation
// You can write your code in this editor
if transMethod=0
{	
	if image_alpha<1{image_alpha+=1/15;}
	if image_alpha>=1
	{
		global.fadeDelay-=1;
		if global.fadeDelay<=0
		{
			if global.complete=1{room_goto_next();}
			else {room_restart();}
		}
	}
}

if transMethod=1
{
	counter+=1/30;
	x=ease("easeoutquart",counter)*amplify+1024;
	if x<=0
	{
		if global.complete=1{room_goto_next();}
		else {room_restart();}
	}
}