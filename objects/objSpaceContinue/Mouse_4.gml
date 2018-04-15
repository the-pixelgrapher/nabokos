/// @description continue

if global.complete=1 and !instance_exists(objFadeOUT) and !instance_exists(objFadeIN)
{
	instance_create_layer(0,0,"insPostprocess",objFadeOUT);
}

if global.sound=1 {audio_play_sound(sndClick,0,0);}