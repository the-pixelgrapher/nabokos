/// @description level complete
resetTimer=0;

if place_snapped(32,32) and !place_snapped(64,32) and !place_snapped(32,64)
{
	global.complete=1;
}