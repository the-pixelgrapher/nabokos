if global.playState=1
{
	
// ---- PLAYER VARIABLES & PARAMETERS ----
global.complete=0;		//whether the level is complete or not
global.level=clamp(room-4,0,20);
near=0;
	
// ---- FADE IN ON LOAD ----
if global.reset=1 {global.fadeMode="inR";}
if global.reset=0 {global.fadeMode="in";}
instance_create_layer(0,0,"insPostprocess",objFadeWipe);
t = 0;
ex = 0;
ea = 0;
scrSound("load");
layer_create(101,"GUI");
instance_create_layer(0,0,"GUI",objControlsScreen);
instance_create_layer(0,0,"GUI",objOptions);
instance_create_layer(0,0,"GUI",objLevelNum);
instance_create_layer(0,0,"GUI",objMenuPause);
alarm[0]=60;			//controls popup delay


}

//VARIABLES
rot=image_angle;		//true rotation
rotT=image_angle;		//roation animation target
alarm[1]=1;

magState=0;				//magnet power state off=0 on=1
resetTimer=0;			//delayed reset timer
rotL=0;					//rotation animation lerp