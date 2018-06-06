//WIRE MECHANICS
state = position_meeting(x,y,objElectron); //wire activates when hit by electron

image_index = state; //sprite change based on state

if global.playState == 1 
{
	if t < 1 {t += 1/120;}
	image_alpha = ease("easeoutcubic",t*(rand+1));
}
else {image_alpha=objLevelEdit.easep*(rand+1)}
