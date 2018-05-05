/*
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
		if select=0 //main menu
		{
			if !instance_exists(objFadeWipe) 
			{
				global.fadeMode="outM";
				instance_create_layer(0,-768,"insPostprocess",objFadeWipe);
			}
		}
		if select=1 //level selection
		{
			if !instance_exists(objFadeWipe)
			{
				global.fadeMode="outLS";
				instance_create_layer(0,-768,"insPostprocess",objFadeWipe);
			}
		}
		if select=4 {game_end();}
		//drawMenuPause=0;
	}
}
*/

if drawMenuPause=1 or counter>0
{
	
	if y<=64 and counter2=1 //fade in animation
	{
		if counter<1 {counter+=1/15;}
		y=ease("easeoutquart",counter)*amplify+64;
		easea=ease("easeoutquart",counter);
	}
	
	if y=0 
	{
		counter2=0; //reset fade out animation
	
		if keyboard_check_pressed(vk_up) {select-=1; audio_play_sound(sndClick2,0,0);}
		if keyboard_check_pressed(vk_down) {select+=1; audio_play_sound(sndClick2,0,0);}

		if select>4 {select=0;}
		if select<0 {select=4;}

		if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space) or
		keyboard_check_pressed(ord("E"))
		{
			if global.sound=1 {audio_play_sound(sndClick,0,0);}
			if select=0 //main menu
			{
				if !instance_exists(objFadeWipe) 
				{
					global.fadeMode="outM";
					instance_create_layer(0,-768,"insPostprocess",objFadeWipe);
				}
			}
			if select=1 //level selection
			{
				if !instance_exists(objFadeWipe)
				{
					global.fadeMode="outLS";
					instance_create_layer(0,-768,"insPostprocess",objFadeWipe);
				}
			}
			if select=4 {game_end();}
			drawMenuPause=0;
		}
	}
}

if drawMenuPause=0 or counter2>0
{
	if y>=0 and counter=1 //fade out animation
	{
		if counter2<1 {counter2+=1/15;}
		y=ease("easeoutquart",counter2)*amplify2;
		easea=1-ease("easeoutquart",counter2);
	}
	if y=64 {counter=0;} //reset fade in animation
}