/// @description set variables
counter=0;
amplify=-1024;
image_xscale=1024;
image_yscale=768;

if global.fadeMode="none" {instance_destroy()}

if global.fadeMode="out"
{
	x=1024;
	if global.sound=1 {audio_play_sound(sndTransition,0,0);}
}

if global.fadeMode="outT"
{
	x=1024;
	audio_play_sound(sndStart,0,0);
}

if global.fadeMode="inR"
{
	amplify=-1024;
}

if global.fadeMode="outR"
{
	y=-768;
	global.reset=1;
	amplify=1024;
	if global.sound=1 
	{
		audio_play_sound(sndTransition,0,0);
		audio_play_sound(sndError,0,0);
	}
}