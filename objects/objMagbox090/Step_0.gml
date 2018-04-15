/// @description Insert description here
// You can write your code in this editor
if place_snapped(32,32) and !place_snapped(64,32) and !place_snapped(32,64){
	speed=0;
}
if !place_meeting(x,y-64,objPlayer) {instance_destroy();}