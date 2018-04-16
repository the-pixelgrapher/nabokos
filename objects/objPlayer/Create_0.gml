// PLAYER VARIABLES & PARAMETERS
global.complete=0;		//whether the level is complete or not
magState=0;				//magnet power state off=0 on=1
offError=0				//error timer if player tries to turn off magnet while moving
resetTimer=0;			//delayed reset timer
levelNTimer=120;		//level number popup timer
easex=-1024;			//x easing of level number popup
easea=1;				//alpha easing of level number popup
counter=0;				//animation counter
counter2=0;
amplify=176;			//move distance of level number popup
amplify2=-176;

// VARIABLE SETTINGS
spdInv=8;				//buggy if not set to a factor of 64 or if less than 5

// FADE IN ON LOAD
if global.reset=1
{	
	global.fadeMode="inR"
	instance_create_layer(0,0,"insPostprocess",objFadeWipe);
}

if global.reset=0
{
	global.fadeMode="in"
	instance_create_layer(0,0,"insPostprocess",objFadeWipe);
}