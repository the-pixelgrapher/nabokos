/// @description toggle sound

global.sound=!global.sound;
if global.sound=1 {audio_play_sound(sndClick,0,0);}
if global.sound=0 {audio_stop_all();}