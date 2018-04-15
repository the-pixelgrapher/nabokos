// PLAYER VARIABLES & PARAMETERS
electric=0;
global.complete=0;
magState=0;
noMoveTimer=0;
levelNTimer=120;
easex=-1024;
easea=1;
counter=0;
counter2=0;
amplify=176;
amplify2=-176;
rotBefore=image_angle;
rotAfter=image_angle;

// VARIABLE SETTINGS
spdInv=8; //buggy if not set to a factor of 64 or if less than 5

// FADE IN ON LOAD
if global.reset=1
{
	instance_create_layer(0,0,"insPostprocess",objFadeINr);
}

if global.reset=0
{
	instance_create_layer(0,0,"insPostprocess",objFadeIN);
}