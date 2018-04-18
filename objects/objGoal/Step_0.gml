state=place_meeting(x,y,objCrate);

// ---- GENERATE ELECTRON CURRENT ----
if state=1 //and !place_meeting(x+64,y,objElectron)
{instance_create_layer(x,y,"insMarkers", objElectron);}