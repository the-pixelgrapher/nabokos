/// @description reset/next
// You can write your code in this editor
/*
if global.complete=0 and !instance_exists(objFadeOUT) and !instance_exists(objFadeIN)
{
	audio_play_sound(sndError,0,0)
}
*/
if global.complete=1 and !instance_exists(objFadeOUT) and !instance_exists(objFadeIN)
{
	instance_create_layer(0,0,"insPostprocess",objFadeOUT);
}

if global.complete=0 and !instance_exists(objFadeOUTr) and !instance_exists(objFadeINr)
{
	instance_create_layer(0,0,"insPostprocess",objFadeOUTr);
}


if global.sound=1 {audio_play_sound(sndClick,0,0);}