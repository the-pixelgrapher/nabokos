/// @description Insert description here
// You can write your code in this editor
if image_alpha<=1{image_alpha+=0.125}
if image_alpha>=1
{
	global.fadeDelay-=1
	if global.fadeDelay<=0
	{
		if global.complete=1{room_goto_next()}
		else {room_restart()}
	}
}
