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
		global.fadeMode="none";
		scrSound("trans");
		room_goto(3);
	}
}

if global.fadeMode="inR" or global.fadeMode="inM" or global.fadeMode="inLS"
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
	}
}

if global.fadeMode="outLN"
{	
	counter+=1/30;
	x=ease("easeoutquart",counter)*amplify+1024;
	if x<=0
	{
		if objLevelSelect.select=0 {room_goto(3);}
		if objLevelSelect.select=1 {room_goto(4);}
		if objLevelSelect.select=2 {room_goto(5);}
		if objLevelSelect.select=3 {room_goto(6);}
		if objLevelSelect.select=4 {room_goto(7);}
		if objLevelSelect.select=5 {room_goto(8);}
		if objLevelSelect.select=6 {room_goto(9);}
	}
}

if global.fadeMode="none" {instance_destroy();}