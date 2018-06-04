// DYNAMIC SPRITE
if position_meeting(x,y+64,objWireA) and
   position_meeting(x,y-64,objWireA) and
   position_meeting(x-64,y,objWireA)
   {
	   image_angle=180;
   }
if image_angle=0   {xx=0;	yy=64;}
if image_angle=90  {xx=-64;   yy=0;}
if image_angle=180 {xx=0;	yy=-64;}
if image_angle=270 {xx=64;  yy=0;}

if position_meeting(x+xx,y+yy,objWireA) and
   position_meeting(x-xx,y-yy,objWireA)
{
	nearA=instance_nearest(x-xx,y-yy,objWireA);
	nearB=instance_nearest(x+xx,y+yy,objWireA);
}