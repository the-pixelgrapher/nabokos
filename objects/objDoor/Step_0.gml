var state, xx, yy, targetx, targety;

//DOOR TAKES STATE OF NEARBY WIRE
if position_meeting(xo-64,yo,objWireA) or
   position_meeting(xo+64,yo,objWireA) or
   position_meeting(xo,yo+64,objWireA) or
   position_meeting(xo,yo-64,objWireA)
{
	var near=instance_nearest(xo,yo,objWireA);
	state=near.state;
}

image_angle=objExit.image_angle
if image_angle=000 or image_angle=180 {xx=xo+00; yy=yo-64;}
if image_angle=090 or image_angle=270 {xx=xo+64; yy=yo-00;}

if state=0
{
	targetx=xo;
	targety=yo;
	if !position_meeting(xo,yo, objWall) 
	{
		with instance_create_layer(xo-32,yo-32,"insMarkers",objWall)
		{
			visible=0;
		}
	}
}

var wall=instance_position(xo-32,yo-32,objWall);

if state=1 
{
	targetx=xx;
	targety=yy;
	if position_meeting(xo,yo, wall) {instance_destroy(wall);}
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

y=lerp(y,targety,0.2); //door animation
x=lerp(x,targetx,0.2); //door animation