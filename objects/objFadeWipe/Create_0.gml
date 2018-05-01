counter=0;
amplify=-1024;
image_xscale=1024;
image_yscale=768;

if global.fadeMode="out"
{
	x=1024;
	if global.sound=1 {audio_play_sound(sndTransition,0,0);}
}

if global.fadeMode="outT"
{
	x=1024;
	audio_play_sound(sndStart,64,0);
}

//if global.fadeMode="inR" {}

if global.fadeMode="outR"
{
	y=-768;
	global.reset=1;
	amplify=1024;
	if global.sound=1 
	{
		audio_play_sound(sndTransition,0,0);
		audio_play_sound(sndError,32,0);
	}
}

if global.fadeMode="outM"
{
	y=-768;
	amplify=1024;
	if global.sound=1 
	{
		audio_play_sound(sndTransition,0,0);
	}
}