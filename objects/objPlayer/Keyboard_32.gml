/// @description delayed reset

if levelNTimer<=0 and resetTimer<32 and !place_meeting(x,y,objExit) and objMenuPause.drawMenuPause=0 and 
global.fadeMode="none"
{
	resetTimer+=1;
}