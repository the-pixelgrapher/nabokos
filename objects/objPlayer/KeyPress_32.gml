/// @description reset/next
// You can write your code in this editor
/*
if global.complete=0 and !instance_exists(objFadeOUT) and !instance_exists(objFadeIN)
{
	audio_play_sound(sndError,0,0)
}
*/
if global.complete=1 and !instance_exists(objFadeWipe)
{
	global.fadeMode="out";
	instance_create_layer(0,0,"insPostprocess",objFadeWipe);
}

if global.complete=0 and !instance_exists(objFadeWipe)
{
	global.fadeMode="outR";
	instance_create_layer(0,0,"insPostprocess",objFadeWipe);
}


if global.sound=1 {audio_play_sound(sndClick,0,0);}