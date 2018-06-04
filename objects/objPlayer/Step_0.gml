if global.playState=1
{

// ---- SNAPPING SETUP ----
var snapped = place_snapped(32,32) * !place_snapped(64,32) * !place_snapped(32,64);

// ---- INPUT SETUP ----
scrControl();

if snapped=1
{
	// ---- MOVEMENT ----
	var spdInv=8; //buggy if not set to a factor of 64 or if less than 5
	if global.stepMovement=0 or objMenuPause.drawMenuPause=0 //continuous movement
	{
		if keyRight=1 and !place_meeting(x+64,y,objSolid) {speed=64/spdInv; direction=0;  }
		if keyUp=1    and !place_meeting(x,y-64,objSolid) {speed=64/spdInv; direction=90; }
		if keyLeft=1  and !place_meeting(x-64,y,objSolid) {speed=64/spdInv; direction=180;}
		if keyDown=1  and !place_meeting(x,y+64,objSolid) {speed=64/spdInv; direction=270;}
	}
	
	if global.stepMovement=1 or objMenuPause.drawMenuPause=0 //single step movement
	{
		if keyRightP=1 and !place_meeting(x+64,y,objSolid) {speed=64/spdInv; direction=0;  }
		if keyUpP=1    and !place_meeting(x,y-64,objSolid) {speed=64/spdInv; direction=90; }
		if keyLeftP=1  and !place_meeting(x-64,y,objSolid) {speed=64/spdInv; direction=180;}
		if keyDownP=1  and !place_meeting(x,y+64,objSolid) {speed=64/spdInv; direction=270;}
	}
	
	// ---- STOPPING ----
	if global.stepMovement=0
	{
		if keyRight=0 and direction=0	{speed=0;} //stop if key for direction is no longer held
		if keyUp=0    and direction=90	{speed=0;}
		if keyLeft=0  and direction=180	{speed=0;}
		if keyDown=0  and direction=270	{speed=0;}
		
		if keyLeft=1 and keyRight=1 or //stop if opposite buttons are held
		   keyUp=1   and keyDown=1
		{
			speed=0;
		}
	}
	
	if global.stepMovement=1
	{
		if mean(keyRightP,keyUpP,keyLeftP,keyDownP)<0.1 {speed=0;} //stop if no keys pressed
	}
	
	var xx, yy;
	if direction=0		{xx=64;		yy=0;}
	if direction=90		{xx=0;		yy=-64;}
	if direction=180	{xx=-64;	yy=0;}
	if direction=270	{xx=0;		yy=64;}
	
	// stop player from pulling crate off goal and getting stuck in door
	if place_meeting(x-xx,y-yy,objGoal) and place_meeting(x-xx,y-yy,objCrate) and 
	place_meeting(x+xx,y+yy,objWallMb) and magState=1 and place_meeting(x,y,objWireA)
	{
		speed=0;
	}
	
	if resetTimer>=24 or objMenuPause.drawMenuPause=1 or global.showControls=1 {speed=0;}
}


// ---- MAGNET ROTATION ----

//crate collision checks
var TO = place_meeting(x,y-32,objCrate),
	RI = place_meeting(x+32,y,objCrate),
	BO = place_meeting(x,y+32,objCrate),
	LE = place_meeting(x-32,y,objCrate),
	
	TL = position_meeting(x-64,y-64,objCrate),
	TR = position_meeting(x+64,y-64,objCrate),
	BR = position_meeting(x+64,y+64,objCrate),
	BL = position_meeting(x-64,y+64,objCrate);
	
//rotT = direction if powered off or not adjecent a crate.
/*
if global.rotationMode=1
{
	if magState=0
	{
		if keyRight=1 {rotT=0;}
		if keyUp=1    {rotT=90;}
		if keyLeft=1  {rotT=180;}
		if keyDown=1  {rotT=270;}
	}
		
	if magState=1
	{
		if keyRight=1 and !position_meeting(x-64,y,objCrate) {rotT=0;}
		if keyUp=1    and !position_meeting(x,y+64,objCrate) {rotT=90;}
		if keyLeft=1  and !position_meeting(x+64,y,objCrate) {rotT=180;}
		if keyDown=1  and !position_meeting(x,y-64,objCrate) {rotT=270;}
	}
}
*/
// Magnet rotates to face a single adjecent crate
if magState=1 and global.rotationMode=0
{
	if TO=1 and RI=0 and BO=0 and LE=0 //if only top 90
	{
		
		if rot=000 {rotT+=090;}
		if rot=180 {rotT-=090;}
		if rot=270 
		{
			if direction=180 {rotT+=180*(2*BR-1);}
			if direction=000 {rotT-=180*(2*BL-1);}
			if direction=090 or direction=270 {rotT-=180;}
		}
		rot=090;
	}
	if TO=0 and RI=0 and BO=1 and LE=0 //if only bottom 270
	{
		if rot=000 {rotT-=090;}
		if rot=180 {rotT+=090;}
		if rot=090 
		{
			if direction=180 {rotT-=180*(2*TR-1);}
			if direction=000 {rotT+=180*(2*TL-1);}
			if direction=090 or direction=270 {rotT-=180;}
		}
		rot=270;
	}
	if TO=0 and RI=0 and BO=0 and LE=1 //if only left 180
	{
		if rot=090 {rotT+=090;}
		if rot=270 {rotT-=090;}
		if rot=000 
		{
			if direction=090 {rotT-=180*(2*BR-1);}
			if direction=270 {rotT+=180*(2*TR-1);}
			if direction=000 or direction=180 {rotT-=180;}
		}
		rot=180;
	}
	if TO=0 and RI=1 and BO=0 and LE=0 //if only right 0
	{
		if rot=090 {rotT-=090;}
		if rot=270 {rotT+=090;}
		if rot=180 
		{
			if direction=090 {rotT+=180*(2*BL-1);}
			if direction=270 {rotT-=180*(2*TL-1);}
			if direction=000 or direction=180 {rotT-=180;}
		}
		rot=000;
	}
	
	// magnet faces closest crate to front when cornered
	if RI=1 and TO=1 // top right check
	and LE=0 and BO=0
	{
		if rot=270	{rotT+=90; rot=0;}
		if rot=180	{rotT-=90; rot=90;}
	}
	if LE=1 and BO=1 // bottom left check
	and RI=0 and TO=0
	{
		if rot=90	{rotT+=90; rot=180;}
		if rot=0	{rotT-=90; rot=270;}
	}
	if TO=1 and LE=1 // top left check
	and BO=0 and RI=0
	{
		if rot=0	{rotT+=90; rot=90;}
		if rot=270	{rotT-=90; rot=180;}
	}
	if RI=1 and BO=1 // bottom right check
	and TO=0 and LE=0
	{
		if rot=180	{rotT+=90; rot=270;}
		if rot=90	{rotT-=90; rot=0;}
	}
		
}

rotL=lerp(rotL,rotT,0.5); //magnet rotation lerp animation

// ---- DELAYED GAME RESET ----
if resetTimer=32 and global.complete=0 and !place_meeting(x,y,objExit)
{	
	global.fadeMode="outR";
	if !instance_exists(objFadeWipe)
	{
		instance_create_layer(0,-768,"insPostprocess",objFadeWipe);
	}
}

// ---- COMPLETION CODE ----
if snapped=1 and place_meeting(x,y,objExit)
{
	global.complete=1;
	speed=0;								//player movement locked on completion
	if alpha>0 {alpha-=1/30;}				//fade player out on completion
	if !instance_exists(objComplete)		//level complete screen
	{	
		layer_create(150,"insOverlay");
		instance_create_layer(0,0,"insOverlay", objComplete);
	}
}

}