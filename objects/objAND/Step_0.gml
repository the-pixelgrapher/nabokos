// DYNAMIC SPRITE
if place_meeting(x,y+64,objWireA) and
   place_meeting(x,y-64,objWireA) and
   place_meeting(x-64,y,objWireA)
   {
	   image_angle=180;
   }
if image_angle=0   {xx=64;  yy=0;}
if image_angle=90  {xx=0;   yy=-64;}
if image_angle=180 {xx=-64; yy=0;}
if image_angle=270 {xx=0;   yy=64;}

// AND LOGIC
if place_meeting(x,y+64,objElectric) and
   place_meeting(x,y-64,objElectric)
{
	nearA=instance_nearest(x,y-64,objWireA);
	nearB=instance_nearest(x,y+64,objWireA);
	
	if nearA.state=1 and nearB.state=1
	{
		state=1;
	}
	
	else
	{
		state=0;
	}
	
}

if state=1
{instance_create_layer(x+xx,y+yy,"insMarkers", objElectron);}

image_index=state;