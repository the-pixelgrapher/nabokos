global.reset=0;
timer=60*5;

audio_stop_all();
if global.splashPlayed=0
{
	instance_create_layer(0,0,"insPostprocess",objFadeINTitle);
}