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

image_index=state //sprite change based on state
