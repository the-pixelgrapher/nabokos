if global.fadeMode="in"
{
	counter+=1/30;
	x=ease("easeoutquart",counter)*amplify;
	if x<=-1024
	{
		global.fadeMode="none";
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
	}
}

if global.fadeMode="outT"
{
	counter+=1/60;
	x=ease("easeoutquart",counter)*amplify+1024;
	if x<=0
	{
		scrSound("trans");
		room_goto(clamp(global.levelUnlocked+4,4,room_last-1));
		global.fadeMode="none";
	}
}

if global.fadeMode="inR" or global.fadeMode="inLS"
{
	counter+=1/30;
	y=ease("easeoutquart",counter)*amplify;
	if y<=-768
	{
		if global.fadeMode="inR" {global.reset=0;}
		global.fadeMode="none";
	}
}

if global.fadeMode="outR" or global.fadeMode="outM" or global.fadeMode="outLS"
{	
	counter+=1/30;
	y=ease("easeoutquart",counter)*amplify-768;
	if y>=0
	{
		if global.fadeMode="outR" {room_restart();}
		if global.fadeMode="outM" {room_goto(1);}
		if global.fadeMode="outLS" {room_goto(2);}
		global.fadeMode="none";
	}
}

if global.fadeMode="outLN"
{	
	counter+=1/30;
	x=ease("easeoutquart",counter)*amplify+1024;
	if x<=0
	{
		room_goto(clamp(objLevelSelect.select+4,4,room_last)); //go to selected level
		global.fadeMode="none";
	}
}

if global.fadeMode="none" {instance_destroy();}