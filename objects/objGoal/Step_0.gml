if place_meeting(x,y,objCrate)
{
near=instance_nearest(x,y,objCrate);
}

if place_meeting(x,y,objCrate) //and near.snapped=1
{
	state=1;
}

if !place_meeting(x,y,objCrate) //or near.snapped=0
{
	state=0;
}

//ELECTRON CURRENT
if state=1 //and !place_meeting(x+64,y,objElectron)
{instance_create_layer(x,y,"insMarkers", objElectron);}