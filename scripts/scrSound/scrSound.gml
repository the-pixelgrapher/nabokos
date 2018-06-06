// play a sound of a defined type

var soundType;
soundType=argument0;

if global.sound=1 {
	switch (soundType)
	{
	
		case "start": //start level
		audio_play_sound(sndStart,64,0);
		break;
		
		case "win": //level complete
		audio_play_sound(sndWin,64,0);
		break;
	
		case "click": //button click
		audio_play_sound(sndClick,0,0);
		break;
	
		case "tap": //switch item
		audio_play_sound(sndClick2,0,0);
		audio_sound_pitch(sndClick2, 1.05-random(0.1));
		break;
	
		case "trans": //room transitiom
		audio_play_sound(sndTransition,16,0);
		break;
		
		case "on": //power on
		audio_play_sound(sndON,16,0);
		break;
		
		case "switch": //electric switch
		audio_play_sound(sndSwitch,16,0);
		break;
		
		case "door": //door open-close
		audio_play_sound(sndDoor,16,0);
		audio_sound_pitch(sndDoor, 1.05-random(0.1));
		break;
		
		case "error": //error
		audio_play_sound(sndError,16,0);
		break;
		
		case "load": //load
		audio_play_sound(sndLoad,16,0);
		audio_sound_pitch(sndLoad, 1.1-random(0.3));
		break;
		
	}
}