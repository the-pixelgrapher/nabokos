//DOOR TAKES STATE OF NEARBY WIRE
if place_meeting(x-64,yo,objWireA) or
   place_meeting(x+64,yo,objWireA)
{
	near=instance_nearest(x,yo,objWireA);
	state=near.state;
}

// DOOR OPEN/CLOSE SOUNDS
if !state=0 and sndPlayed1=0
{
	if global.sound=1 
	{
		audio_play_sound(sndON,2,0);
		audio_play_sound(sndDoor,1,0);
	}
	sndPlayed1=1;
	sndPlayed0=0;
}

if !state=1 and sndPlayed0=0
{
	if global.sound=1 {audio_play_sound(sndDoor,1,0);}
	sndPlayed0=1;
	sndPlayed1=0;
}

y=lerp(y,target.y,0.2); //door animation