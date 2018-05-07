// ---- LEVEL NUMBER POPUP ANIMATION ----
if global.fadeMode="none" and levelNTimer>-31
{
	levelNTimer-=1;
	
	if levelNTimer>0
	{
		if counter<1 {counter+=1/30;}
		easex=ease("easeoutquart",counter)*amplify-96;
		easea=ease("easeoutcubic",counter*2);
	}
	
	if levelNTimer<=0 or global.complete=1
	{
		if counter2<1 {counter2+=1/30;}
		easex=ease("easeoutquart",counter2)*amplify2+176-96;
		easea=1-ease("easeoutcubic",counter2*2);
	}
}

// ---- SNAPPING SETUP ----
var snapped = place_snapped(32,32) * !place_snapped(64,32) * !place_snapped(32,64);

// ---- INPUT SETUP ----
var right = max(keyboard_check(vk_right), keyboard_check(ord("D")), 0),
	up = max(keyboard_check(vk_up), keyboard_check(ord("W")), 0),
	left = max(keyboard_check(vk_left), keyboard_check(ord("A")), 0),
	down = max(keyboard_check(vk_down), keyboard_check(ord("S")), 0),

	rightP = max(keyboard_check_pressed(vk_right), keyboard_check_pressed(ord("D")), 0),
	upP = max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0),
	leftP = max(keyboard_check_pressed(vk_left), keyboard_check_pressed(ord("A")), 0),
	downP = max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

if snapped=1
{
	// ---- MOVEMENT ----
	var spdInv=8; //buggy if not set to a factor of 64 or if less than 5
	if global.stepMovement=0 or objMenuPause.drawMenuPause=0 //continuous movement
	{
		if right=1 and !place_meeting(x+64,y,objSolid) {speed=64/spdInv; direction=0;  }
		if up=1    and !place_meeting(x,y-64,objSolid) {speed=64/spdInv; direction=90; }
		if left=1  and !place_meeting(x-64,y,objSolid) {speed=64/spdInv; direction=180;}
		if down=1  and !place_meeting(x,y+64,objSolid) {speed=64/spdInv; direction=270;}
	}
	
	if global.stepMovement=1 or objMenuPause.drawMenuPause=0 //single step movement
	{
		if rightP=1 and !place_meeting(x+64,y,objSolid) {speed=64/spdInv; direction=0;  }
		if upP=1    and !place_meeting(x,y-64,objSolid) {speed=64/spdInv; direction=90; }
		if leftP=1  and !place_meeting(x-64,y,objSolid) {speed=64/spdInv; direction=180;}
		if downP=1  and !place_meeting(x,y+64,objSolid) {speed=64/spdInv; direction=270;}
	}
	
	// ---- STOPPING ----
	if global.stepMovement=0
	{
		if right=0 and direction=0		{speed=0;} //stop if key for direction is no longer held
		if up=0    and direction=90		{speed=0;}
		if left=0  and direction=180	{speed=0;}
		if down=0  and direction=270	{speed=0;}
		
		if left=1 and right=1 or //stop if opposite buttons are held
		   up=1   and down=1
		{
			speed=0;
		}
	}
	
	if global.stepMovement=1
	{
		if mean(rightP,upP,leftP,downP)<0.1 {speed=0;} //stop if no keys pressed
	}
	
	if resetTimer>=24 or objMenuPause.drawMenuPause=1 {speed=0;}
}


// ---- MAGNET ROTATION ----
rotI=point_direction(x,y,objPlayerRotLerp.x,objPlayerRotLerp.y);
//rotT = direction if powered off or not adjecent a crate.
/*
if global.rotationMode=1
{
	if magState=0
	{
		if right=1 {rotT=0;}
		if up=1    {rotT=90;}
		if left=1  {rotT=180;}
		if down=1  {rotT=270;}
	}
		
	if magState=1
	{
		if right=1 and !position_meeting(x-64,y,objCrate) {rotT=0;}
		if up=1    and !position_meeting(x,y+64,objCrate) {rotT=90;}
		if left=1  and !position_meeting(x+64,y,objCrate) {rotT=180;}
		if down=1  and !position_meeting(x,y-64,objCrate) {rotT=270;}
	}
}
*/
// Magnet rotates to face a single adjecent crate
if magState=1 and global.rotationMode=0
{
	if place_meeting(x,y-16,objCrate) and //if only top
	!place_meeting(x,y+16,objCrate)   and
	!place_meeting(x-16,y,objCrate)   and
	!place_meeting(x+16,y,objCrate)   {rotT=90;}
		
	if place_meeting(x,y+16,objCrate) and //if only bottom
	!place_meeting(x,y-16,objCrate)   and
	!place_meeting(x-16,y,objCrate)   and
	!place_meeting(x+16,y,objCrate)   {rotT=270;}
		
	if place_meeting(x-16,y,objCrate) and //if only left
	!place_meeting(x,y-16,objCrate)   and
	!place_meeting(x,y+16,objCrate)   and
	!place_meeting(x+16,y,objCrate)   {rotT=180;}
		
	if place_meeting(x+16,y,objCrate) and //if only right
	!place_meeting(x,y-16,objCrate)   and
	!place_meeting(x,y+16,objCrate)   and
	!place_meeting(x-16,y,objCrate)   {rotT=0;}

	// magnet faces closest crate to front when cornered
	if position_meeting(x+64,y,objCrate) and position_meeting(x,y-64,objCrate) // top right check
	and !position_meeting(x-64,y,objCrate) and !position_meeting(x,y+64,objCrate)
	{
		if rotT=180	{rotT=90;}
		if rotT=270	{rotT=0;}
	}
	if position_meeting(x-64,y,objCrate) and position_meeting(x,y+64,objCrate) // bottom left check
	and !position_meeting(x+64,y,objCrate) and !position_meeting(x,y-64,objCrate)
	{
		if rotT=90	{rotT=180;}
		if rotT=0	{rotT=270;}
	}
	if position_meeting(x,y-64,objCrate) and position_meeting(x-64,y,objCrate) // top left check
	and !position_meeting(x,y+64,objCrate) and !position_meeting(x+64,y,objCrate)
	{
		if rotT=0	{rotT=90;}
		if rotT=270 {rotT=180;}
	}
	if position_meeting(x,y+64,objCrate) and position_meeting(x+64,y,objCrate) // bottom right check
	and !position_meeting(x,y-64,objCrate) and !position_meeting(x-64,y,objCrate)
	{
		if rotT=180	{rotT=270;}
		if rotT=90	{rotT=0;}
	}
		
}

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