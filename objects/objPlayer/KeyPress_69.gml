/// @description toggle magnet

if instance_exists(objPlayer)
{
	if global.complete=0
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
}

/*
else if global.complete=0
{
	if global.sound=1
	{
		audio_play_sound(sndError,10,0);
	}
	offError=60*4;
}
*/