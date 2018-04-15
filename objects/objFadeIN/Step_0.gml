/// @description transition animation
// You can write your code in this editor
if transMethod=0
{
	image_alpha-=1/15;
	if image_alpha<=0{instance_destroy();}
}

if transMethod=1
{
	counter+=1/30;
	x=ease("easeoutquart",counter)*amplify;
	if x<=-1024{instance_destroy();}
}