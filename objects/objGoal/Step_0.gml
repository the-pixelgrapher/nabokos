if place_meeting(x,y,objCrate)
{
	state=1;
}

if !place_meeting(x,y,objCrate)
{
	state=0;
}

// ---- GENERATE ELECTRON CURRENT ----
if state=1 //and !place_meeting(x+64,y,objElectron)
{instance_create_layer(x,y,"insMarkers", objElectron);}