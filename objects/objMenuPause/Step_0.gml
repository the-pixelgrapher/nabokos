if drawMenuPause=1 
{
	if keyboard_check_pressed(vk_up) {select-=1; audio_play_sound(sndClick2,0,0);}
	if keyboard_check_pressed(vk_down) {select+=1; audio_play_sound(sndClick2,0,0);}

	if select>4 {select=0;}
	if select<0 {select=4;}

	if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space) or
	keyboard_check_pressed(ord("E"))
	{
		if global.sound=1 {audio_play_sound(sndClick,0,0);}
		if select=0 
		{
				global.fadeMode="outM";
			instance_create_layer(0,-1024,"insPostprocess",objFadeWipe);
		}
		if select=4 {game_end();}
		drawMenuPause=0;
	}
}