/// @description transition animation

if transMethod=0
{
	image_alpha-=1/15;
	if image_alpha<=0
	{
		global.reset=0;
		instance_destroy();
	}
}

if transMethod=1
{
	counter+=1/30;
	y=ease("easeoutquart",counter)*amplify;
	if y<=-1024
	{
		global.reset=0;
		instance_destroy();
	}
}