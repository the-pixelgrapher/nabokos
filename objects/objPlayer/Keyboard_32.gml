/// @description delayed reset

if global.complete=0 and levelNTimer<=0 and !place_meeting(x,y,objExit)
{
	resetTimer+=1;
}