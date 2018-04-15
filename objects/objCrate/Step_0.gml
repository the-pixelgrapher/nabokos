// crate follows magnetbox
if place_meeting(x-128,y,objMagbox000) {x=objMagbox000.x+96;}
if place_meeting(x,y+128,objMagbox090) {y=objMagbox090.y-160;}
if place_meeting(x+128,y,objMagbox180) {x=objMagbox180.x-160;}
if place_meeting(x,y-128,objMagbox270) {y=objMagbox270.y+96;}

if place_snapped(64,64)
{
	if place_meeting(x,y,objGoal) {state=1;}
	snapped=1;
}
else {snapped=0;}

if !place_meeting(x,y,objGoal) or !place_snapped(64,64) 
{
	state=0;
}

image_index=state;