//DYNAMIC SPRITES

if timer>0{timer-=1;}

if sprite_index=sprWirePH and timer=0
{
	if place_meeting(x-64,y,objElectric) or place_meeting(x+64,y,objElectric)
	{
		sprite_index=sprWireH; //left or right
	}

	if place_meeting(x,y-64,objElectric) or place_meeting(x,y+64,objElectric)
	{
		sprite_index=sprWireH; //top or bottom
		image_angle=90;
	}

	if place_meeting(x-64,y,objElectric) and place_meeting(x+64,y,objElectric)
	{
		sprite_index=sprWireH; //left & right
	}

	if place_meeting(x,y-64,objElectric) and place_meeting(x,y+64,objElectric)
	{
		sprite_index=sprWireH; //top & bottom
		image_angle=90;
	}

	if place_meeting(x,y-64,objElectric) and place_meeting(x+64,y,objElectric)
	{
		sprite_index=sprWireTR; //top & right
		image_angle=0;
	}

	if place_meeting(x-64,y,objElectric) and place_meeting(x,y-64,objElectric)
	{
		sprite_index=sprWireTR; //top & left
		image_angle=90;
	}

	if place_meeting(x-64,y,objElectric) and place_meeting(x,y+64,objElectric)
	{
		sprite_index=sprWireTR;  //left & bottom
		image_angle=180;
	}

	if place_meeting(x+64,y,objElectric) and place_meeting(x,y+64,objElectric)
	{
		sprite_index=sprWireTR; //right & bottom
		image_angle=270;
	}
}

//WIRE MECHANICS
if place_meeting(x,y,objElectron) {state=1;}
else {state=0;}
/*
//WIRES TAKE STATE OF ADJACENT WIRE
if place_meeting(x+64,y,objWireA) or 
   place_meeting(x-64,y,objWireA) or 
   place_meeting(x,y+64,objWireA) or
   place_meeting(x,y-64,objWireA)
{
	x+=10000
	near=instance_nearest(x-10000,y,objWireA)
	x-=10000
	state=near.state
}

//WIRES TAKE STATE OF ADJACENT GOAL
if place_meeting(x+64,y,objGoal) or 
   place_meeting(x-64,y,objGoal) or 
   place_meeting(x,y+64,objGoal) or
   place_meeting(x,y-64,objGoal)
{
	nearS=instance_nearest(x,y,objGoal)
	state=nearS.state
}

//WIRES TAKE STATE OF ADJACENT GATE
if place_meeting(x-64,y,objAND) or
   place_meeting(x+64,y,objAND)
{
	nearSG=instance_nearest(x,y,objAND)
	state=nearSG.state
}
*/

image_index=state //sprite change based on state
