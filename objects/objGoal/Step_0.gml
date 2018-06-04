if global.playState=1
{

var state=position_meeting(x,y,objCrate);

// ---- GENERATE ELECTRON CURRENT ----
if state=1 {instance_create_layer(x,y,"insMarkers", objElectron);}

}