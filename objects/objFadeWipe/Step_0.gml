if global.fadeMode="in"
{
	counter+=1/30;
	x=ease("easeoutquart",counter)*amplify;
	if x<=-1024
	{
		global.fadeMode="none";
		instance_destroy();
	}
}

if global.fadeMode="out"
{
	counter+=1/30;
	x=ease("easeoutquart",counter)*amplify+1024;
	if x<=0
	{
		global.fadeMode="none";
		if global.complete=1{room_goto_next();}
		else {room_restart();}
		
	}
}

if global.fadeMode="outT"
{
	counter+=1/60;
	x=ease("easeoutquart",counter)*amplify+1024;
	if x<=0
	{
		global.fadeMode="none";
		audio_play_sound(sndTransition,0,0);
		room_goto_next();
	}
}

if global.fadeMode="inR"
{
	counter+=1/30;
	y=ease("easeoutquart",counter)*amplify;
	if y<=-1024
	{
		global.reset=0;
		global.fadeMode="none";
		instance_destroy();
	}
}

if global.fadeMode="outR" and !instance_exists(objComplete)
{
	counter+=1/30;
	y=ease("easeoutquart",counter)*amplify-1024;
	if y>=0
	{
		global.fadeMode="none";
		objPlayer.resetTimer=0
		room_restart();
	}
}