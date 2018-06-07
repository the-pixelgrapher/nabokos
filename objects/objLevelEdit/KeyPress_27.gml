if !instance_exists(objFadeWipe) 
{
	scrSaveLevel();
	scrSave();
	scrSound("click");
	global.fadeMode="outLS";
	global.gotoCL = 1;
	instance_create_layer(0,-768,"insPostprocess",objFadeWipe);
}