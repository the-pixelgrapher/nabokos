var eDirectionSet;
eDirectionSet=argument0;

switch (eDirectionSet)
{
	
	case 0:
	if position_meeting(x+64,y,objWireA) and !position_meeting(x+64,y,objElectron)
	{
		with instance_create_layer(x+64,y,"insMarkers",objElectron) {eDirection=0;}
	}
	break;
	
	case 90:
	if position_meeting(x,y-64,objWireA) and !position_meeting(x,y-64,objElectron)
	{
		with instance_create_layer(x,y-64,"insMarkers",objElectron) {eDirection=90;}
	}
	break;
	
	case 180:
	if position_meeting(x-64,y,objWireA) and !position_meeting(x-64,y,objElectron)
	{
		with instance_create_layer(x-64,y,"insMarkers",objElectron) {eDirection=180;}
	}
	break;
	
	case 270:
	if position_meeting(x,y+64,objWireA) and !position_meeting(x,y+64,objElectron)
	{
		with instance_create_layer(x,y+64,"insMarkers",objElectron) {eDirection=270;}
	}
	break;
	
}
