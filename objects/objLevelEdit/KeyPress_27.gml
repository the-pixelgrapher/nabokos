if !instance_exists(objFadeWipe) 
{
	scrSound("click");
	global.fadeMode="outM";
	instance_create_layer(0,-768,"insPostprocess",objFadeWipe);
}