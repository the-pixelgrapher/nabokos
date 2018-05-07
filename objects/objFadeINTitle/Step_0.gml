image_alpha-=1/15;
alpha-=1/15;
if image_alpha<=0 or alpha<=0
{
	global.splashPlayed=1;
}

if global.splashPlayed=1 {instance_destroy();}