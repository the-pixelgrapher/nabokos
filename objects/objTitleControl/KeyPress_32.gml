/// @description start game

if !instance_exists(objFadeINTitle) and !instance_exists(objFadeOUTtitle)
{
	if global.sound=1 {audio_play_sound(sndClick,0,0);}
	instance_create_layer(0,0,"insPostprocess",objFadeOUTtitle);
}