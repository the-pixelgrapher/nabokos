/// @description set variables
// You can write your code in this editor
global.reset=1;
counter=0;
amplify=1024;
transMethod=1;
image_alpha=transMethod;
image_xscale=1024;
image_yscale=768;
if global.sound=1 
{
	audio_play_sound(sndTransition,0,0);
	audio_play_sound(sndError,0,0);
}