/// @description continue

if !instance_exists(objFadeWipe)
{	
	global.fadeMode="out";
	instance_create_layer(0,0,"insPostprocess",objFadeWipe);
}

scrSound("click");