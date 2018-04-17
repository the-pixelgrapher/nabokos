/// @description start game
global.fadeMode="outT";

if !instance_exists(objFadeWipe)
{
	if global.sound=1 {audio_play_sound(sndClick,0,0);}
	instance_create_layer(0,0,"insPostprocess",objFadeWipe);
}