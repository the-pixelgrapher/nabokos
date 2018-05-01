/*
if load>=0
{
	if place_meeting(x-64,y,objWall) or place_meeting(x-64,y,objWall) {image_angle=270;}
	load-=1;
}
*/

if !collision_line(x,y,x+1000,y,objWall,0,0) {image_angle=0}
if !collision_line(x,y,x,y-1000,objWall,0,0) {image_angle=90}
if !collision_line(x,y,x-1000,y,objWall,0,0) {image_angle=180}
if !collision_line(x,y,x,y+1000,objWall,0,0) {image_angle=270}