if keyboard_check_pressed(vk_space)=1 {cRot-=90;}
customRotation=lerp(customRotation,cRot,0.25);

image_angle=customRotation;