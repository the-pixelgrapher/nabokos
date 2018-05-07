// AND LOGIC
if alarm[0]=-1
{
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