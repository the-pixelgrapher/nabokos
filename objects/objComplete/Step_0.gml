if counter<1 {counter+=1/100;}

if counter2<1 {counter2+=1/30;}

y=ease("easeoutelastic",counter)*amplify-16;

image_alpha=ease("easeoutcubic",counter2)*1;

if delay>0
{
	delay-=1;
}

if delay<=0 and !instance_exists(objSpaceContinue)
{
	instance_create_layer(231,0,"insPlayer", objSpaceContinue);
}