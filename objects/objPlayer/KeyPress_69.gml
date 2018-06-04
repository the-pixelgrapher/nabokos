/// @description toggle magnet
if global.playState=1
{

if global.complete=0 and objMenuPause.drawMenuPause=0 and global.showControls=0
{
	magState=!magState;
	scrSound("switch");
	
	if magState=1 {scrSound("on");}
}

}