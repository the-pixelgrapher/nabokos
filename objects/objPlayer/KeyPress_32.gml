/// @description next level
if global.playState=1
{
	
if global.complete=1 and global.fadeMode="none" and objMenuPause.drawMenuPause=0
{
	if room=3{
		global.fadeMode="outLS";
		global.gotoCL=1;
	}
	else
	{
		global.fadeMode="out";
	}
	instance_create_layer(0,0,"insPostprocess",objFadeWipe);
}

if objMenuPause.drawMenuPause=0 and global.showControls=0 {scrSound("click");}

}
