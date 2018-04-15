image_speed=0;
image_index=!image_index;

if global.sound=1 
{
	audio_play_sound(sndSwitch,0,0);
	if image_index=1 {audio_play_sound(sndON,1,0);}
	ePressed=1;
	timer=60*5;
}

