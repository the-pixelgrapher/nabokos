if !collision_line(x,y,x-1000,y,objSolid,0,0) {image_angle=180;}
if !collision_line(x,y,x,y+1000,objSolid,0,0) {image_angle=270;}
if !collision_line(x,y,x,y-1000,objSolid,0,0) {image_angle=90;}
if !collision_line(x,y,x+1000,y,objSolid,0,0) {image_angle=0;}

if global.playState=1
{
	if !layer_exists("insDoors") {layer_create(250, "insDoors");}
	instance_create_layer(x,y,"insDoors",objDoor);
}