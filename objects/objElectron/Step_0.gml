if eDirection=1
{
	if place_meeting(x+64,y,objWireA) and !place_meeting(x+64,y,objElectron) 
	{instance_create_layer(x+64,y,"insMarkers",objElectron0);} //0

	if place_meeting(x-64,y,objWireA) and !place_meeting(x-64,y,objElectron) 
	{instance_create_layer(x-64,y,"insMarkers",objElectron180);} //180

	if place_meeting(x,y+64,objWireA) and !place_meeting(x,y+64,objElectron) 
	{instance_create_layer(x,y+64,"insMarkers",objElectron270);} //270

	if place_meeting(x,y-64,objWireA) and !place_meeting(x,y-64,objElectron) 
	{instance_create_layer(x,y-64,"insMarkers",objElectron90);} //90
}

if !place_meeting(x,y,objWireA) {instance_destroy()}
if place_meeting(x,y,objElectron){instance_destroy()}

life-=1;
if life<0 {instance_destroy();}