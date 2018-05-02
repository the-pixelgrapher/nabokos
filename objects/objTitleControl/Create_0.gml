global.reset=0;

if global.splashPlayed=0
{
	instance_create_layer(0,0,"insPostprocess",objFadeINTitle);
}

if global.fadeMode="outM"
{
	global.fadeMode="inM"
	instance_create_layer(0,0,"insPostprocess",objFadeWipe);
}