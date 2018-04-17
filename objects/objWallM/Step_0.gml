//DOOR TAKES STATE OF NEARBY WIRE
if place_meeting(xo-64,yo+00,objWireA) or
   place_meeting(xo+64,yo+00,objWireA) or
   place_meeting(xo+00,yo+64,objWireA) or
   place_meeting(xo+00,yo-64,objWireA)
{
	near=instance_nearest(xo,yo,objWireA);
	state=near.state;
}

if load >=0 
{
	image_angle=spawn.image_angle;
	load-=1;
}

// DOOR OPEN/CLOSE SOUNDS
if !state=0 and sndPlayed1=0
{
	if global.sound=1 
	{
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

if animate=0
{
	x=target.x;
	y=target.y;
}

if animate=1
{
	x=lerp(x,target.x,0.2);
	y=lerp(y,target.y,0.2);
}