/// @description next level

if global.complete=1 and global.fadeMode="none" and objMenuPause.drawMenuPause=0
{
	global.fadeMode="out";
	instance_create_layer(0,0,"insPostprocess",objFadeWipe);
}

if objMenuPause.drawMenuPause=0 and global.showControls=0 {scrSound("click");}
