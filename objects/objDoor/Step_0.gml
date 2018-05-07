//DOOR TAKES STATE OF NEARBY WIRE
if position_meeting(xo-64,yo,objWireA) or
   position_meeting(xo+64,yo,objWireA) or
   position_meeting(xo,yo+64,objWireA) or
   position_meeting(xo,yo-64,objWireA)
{
	near=instance_nearest(x,yo,objWireA);
	state=near.state;
}

// DOOR OPEN/CLOSE SOUNDS
if state=1 and sndPlayed1=0
{
	scrSound("on");
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

y=lerp(y,target.y,0.2); //door animation