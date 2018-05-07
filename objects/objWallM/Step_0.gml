//DOOR TAKES STATE OF NEARBY WIRE
if position_meeting(xo-64,yo+00,objWireA) or
   position_meeting(xo+64,yo+00,objWireA) or
   position_meeting(xo+00,yo+64,objWireA) or
   position_meeting(xo+00,yo-64,objWireA)
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
if state=1 and sndPlayed1=0
{
	scrSound("door");
	sndPlayed1=1;
	sndPlayed0=0;
}

if state=0 and sndPlayed0=0
{
	scrSound("door");
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