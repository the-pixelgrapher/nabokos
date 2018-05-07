if global.splashPlayed=0
{
	instance_create_layer(0,0,"insPostprocess",objFadeINTitle);
}

if global.fadeMode="outM"
{
	global.fadeMode="inM"
	instance_create_layer(0,0,"insPostprocess",objFadeWipe);
}

if global.aaSet=0
{
	alarm[0]=1;
	alarm[1]=2;
	global.aaSet=1;
}