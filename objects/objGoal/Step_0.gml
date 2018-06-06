if global.playState=1
{

var state=position_meeting(x,y,objCrate);

// ---- GENERATE ELECTRON CURRENT ----
if state=1 {instance_create_layer(x,y,"insMarkers", objElectron);}

if global.playState == 1 
{
	if t < 1 {t += 1/120;}
	image_alpha = ease("easeoutcubic",t*(rand+1));
}
else {image_alpha=objLevelEdit.easep*(rand+1)}


}