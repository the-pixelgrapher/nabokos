if t < 1 {t += 1/120;}
if global.playState == 1 {image_alpha = ease("easeoutquart",t*(rand+1));}
else {image_alpha = objLevelEdit.easep*(rand+1)}