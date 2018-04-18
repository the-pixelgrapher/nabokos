/// @description continue

if !instance_exists(objFadeWipe)
{
	instance_create_layer(0,0,"insPostprocess",objFadeWipe);
}

if global.sound=1 {audio_play_sound(sndClick,0,0);}