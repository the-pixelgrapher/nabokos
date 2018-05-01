/// @description next level

if global.complete=1 and global.fadeMode="none" and objMenuPause.drawMenuPause=0
{
	global.fadeMode="out";
	instance_create_layer(0,0,"insPostprocess",objFadeWipe);
}

if global.sound=1 and objMenuPause.drawMenuPause=0 {audio_play_sound(sndClick,0,0);}
