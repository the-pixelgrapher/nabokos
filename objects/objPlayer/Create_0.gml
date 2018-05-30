// ---- PLAYER VARIABLES & PARAMETERS ----
global.complete=0;		//whether the level is complete or not
global.level=room-4;
near=0;

//VARIABLES
alpha=1;
magState=0;				//magnet power state off=0 on=1
resetTimer=0;			//delayed reset timer
rot=0;					//true rotation
rotT=0;					//roation animation target
rotL=0;					//rotation animation lerp
alarm[0]=60;			//controls popup delay

// ---- FADE IN ON LOAD ----

if global.reset=1 {global.fadeMode="inR";}
if global.reset=0 {global.fadeMode="in";}
instance_create_layer(0,0,"insPostprocess",objFadeWipe);

layer_create(101,"GUI");
instance_create_layer(0,0,"GUI",objControlsScreen);
instance_create_layer(0,0,"GUI",objLevelNum);
instance_create_layer(0,0,"GUI",objMenuPause);