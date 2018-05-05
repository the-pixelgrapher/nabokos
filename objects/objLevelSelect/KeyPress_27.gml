if !instance_exists(objFadeWipe) 
{
	if global.sound=1 {audio_play_sound(sndClick,0,0);}
	global.fadeMode="outM";
	instance_create_layer(0,-768,"insPostprocess",objFadeWipe);
}