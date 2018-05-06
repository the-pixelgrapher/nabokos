counter=0;
amplify=-1024;
image_xscale=1024;
image_yscale=768;

if global.fadeMode="out" or global.fadeMode="outT" or global.fadeMode="outLN"
{
	x=1024;
	if global.sound=1 
	{
		if global.fadeMode="outT" or global.fadeMode="outLN" {audio_play_sound(sndStart,64,0);}
		audio_play_sound(sndTransition,0,0);
	}
}

if global.fadeMode="inR" or global.fadeMode="inM" or global.fadeMode="inLS"
{
	amplify=-768;
}

if global.fadeMode="outR" or global.fadeMode="outM" or global.fadeMode="outLS"
{
	y=-768;
	if global.fadeMode="outR" {global.reset=1;}
	amplify=768;
	if global.sound=1 
	{
		audio_play_sound(sndTransition,0,0);
		if global.fadeMode="outR" {audio_play_sound(sndError,32,0);}
	}
}