/// @description toggle magnet

if global.complete=0 and objMenuPause.drawMenuPause=0
{
	magState=!magState;
	if global.sound=1
	{
		audio_play_sound(sndSwitch,0,0);
	}
	
	if magState=1 and global.sound=1
	{
		audio_play_sound(sndON,1,0);
	}
}