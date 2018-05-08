// ---- PLAYER VARIABLES & PARAMETERS ----
global.complete=0;		//whether the level is complete or not
global.level=room-3;

//VARIABLES
alpha=1;
magState=0;				//magnet power state off=0 on=1
resetTimer=0;			//delayed reset timer
levelNTimer=120;		//level number popup timer
easex=-1024;			//x easing of level number popup
easea=1;				//alpha easing of level number popup
counter=0;				//animation counter
counter2=0;
amplify=176;			//move distance of level number popup
amplify2=-176;
rotT=0;
rotI=0;

// ROTATION LERP SETUP
instance_create_layer(x,y,"insMarkers",objPlayerRotTarget);
instance_create_layer(x+64,y+64,"insMarkers",objPlayerRotLerp);

// ---- FADE IN ON LOAD ----

if global.reset=1 {global.fadeMode="inR";}
if global.reset=0 {global.fadeMode="in";}
instance_create_layer(0,0,"insPostprocess",objFadeWipe);

layer_create(101,"GUI");
instance_create_layer(0,0,"GUI",objMenuPause);