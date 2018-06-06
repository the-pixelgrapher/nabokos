//DOOR TAKES STATE OF NEARBY WIRE
var state=0, xx, yy, targetx, targety;
if position_meeting(xo-64,yo+00,objWireA) or
   position_meeting(xo+64,yo+00,objWireA) or
   position_meeting(xo+00,yo+64,objWireA) or
   position_meeting(xo+00,yo-64,objWireA)
{
	var near=instance_nearest(xo,yo,objWireA);
	state=near.state;
}

if image_angle=000 {xx=xo+64; yy=yo+00;}
if image_angle=090 {xx=xo+00; yy=yo-64;}
if image_angle=180 {xx=xo-64; yy=yo+00;}
if image_angle=270 {xx=xo+00; yy=yo+64;}



if state=0 
{
	targetx=xo;
	targety=yo;
}



if state=1 
{
	targetx=xx;
	targety=yy;
	//if position_meeting(xo,yo, wall) {instance_destroy(wall);}
	//with wall {x=xx-32; y=yy-32;}
}

with wall {x=targetx-32; y=targety-32;}

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

image_alpha=spawn.image_alpha;
x=lerp(x,targetx,0.2);
y=lerp(y,targety,0.2);