/// @description set variables

counter=0;
amplify=-1024;
image_xscale=1024;
image_yscale=768;


if global.fadeMode="out"
{
	if global.sound=1 {audio_play_sound(sndTransition,0,0);}
}

if global.fadeMode="outT"
{
	transMethod=1;
	image_alpha=transMethod;
	audio_play_sound(sndStart,0,0);

}

if global.fadeMode="inR"
{
	amplify=-1024;
}

if global.fadeMode="outR"
{
	global.reset=1;
	amplify=1024;
	transMethod=1;
	if global.sound=1 
	{
		audio_play_sound(sndTransition,0,0);
		audio_play_sound(sndError,0,0);
	}
}