// ---- LEVEL NUMBER POPUP ANIMATION ----
if global.fadeMode="none" and levelNTimer>-31 or global.fadeMode="outR"
{
	levelNTimer-=1;
	
	if levelNTimer>0
	{
		if counter<1 {counter+=1/30};
		easex=ease("easeoutquart",counter)*amplify-96;
		easea=ease("easeoutcubic",counter*2);
	}
	
	if levelNTimer<=0 or global.complete=1 or global.fadeMode="outR"
	{
		if counter2<1 {counter2+=1/30};
		easex=ease("easeoutquart",counter2)*amplify2+176-96;
		easea=1-ease("easeoutcubic",counter2*2);
	}
}

// ---- ON/OFF INDICATOR ----
image_index=magState;

// ---- SNAPPING SETUP ----
if place_snapped(32,32) and !place_snapped(64,32) and !place_snapped(32,64) {snapped=1;}
else {snapped=0;}

// ---- INPUT SETUP ----
right=max(keyboard_check(vk_right),keyboard_check(ord("D")),0);
up=max(keyboard_check(vk_up),keyboard_check(ord("W")),0);
left=max(keyboard_check(vk_left),keyboard_check(ord("A")),0);
down=max(keyboard_check(vk_down),keyboard_check(ord("S")),0);

rightP=max(keyboard_check_pressed(vk_right),keyboard_check_pressed(ord("D")),0);
upP=max(keyboard_check_pressed(vk_up),keyboard_check_pressed(ord("W")),0);
leftP=max(keyboard_check_pressed(vk_left),keyboard_check_pressed(ord("A")),0);
downP=max(keyboard_check_pressed(vk_down),keyboard_check_pressed(ord("S")),0);

if snapped=1
{
	// ---- MOVEMENT ----
	if global.stepMovement=0 and resetTimer<=30
	{ //continuous movement
		if right=1 and !position_meeting(x+64,y,objWall){speed=64/spdInv; direction=0;  }
		if up=1    and !position_meeting(x,y-64,objWall){speed=64/spdInv; direction=90; }
		if left=1  and !position_meeting(x-64,y,objWall){speed=64/spdInv; direction=180;}
		if down=1  and !position_meeting(x,y+64,objWall){speed=64/spdInv; direction=270;}
	}
	
	if global.stepMovement=1 and resetTimer<=30
	{ //single step movement
		if rightP=1 and !position_meeting(x+64,y,objWall) {speed=64/spdInv; direction=0;  }
		if upP=1    and !position_meeting(x,y-64,objWall) {speed=64/spdInv; direction=90; }
		if leftP=1  and !position_meeting(x-64,y,objWall) {speed=64/spdInv; direction=180;}
		if downP=1  and !position_meeting(x,y+64,objWall) {speed=64/spdInv; direction=270;}
	}
	
	// ---- STOPPING ----
	if global.stepMovement=0
		{
		if right=0 and direction=0   {speed=0;} //stop if key is no longer pressed
		if up=0    and direction=90  {speed=0;}
		if left=0  and direction=180 {speed=0;}
		if down=0  and direction=270 {speed=0;}
	
		if left=1 and right=1 or
		   up=1   and down=1  or
		   keyboard_check(vk_nokey)=1
		{
			speed=0;
		}
	}
	
	if global.stepMovement=1
	{
		if rightP=0 and upP=0
		and downP=0 and leftP=0
		{speed=0;}
	}
	
	if resetTimer>30 {speed=0;}
}


// ---- MAGNET ROTATION ----

	//image_angle = direction if powered off or not adjecent a crate.
	if global.rotationMode=1
	{
		if magState=0
		{
			if right=1 {image_angle=0;}
			if up=1    {image_angle=90;}
			if left=1  {image_angle=180;}
			if down=1  {image_angle=270;}
		}
		
		if magState=1
		{
			if right=1 and !position_meeting(x-64,y,objCrate) {image_angle=0;}
			if up=1    and !position_meeting(x,y+64,objCrate) {image_angle=90;}
			if left=1  and !position_meeting(x+64,y,objCrate) {image_angle=180;}
			if down=1  and !position_meeting(x,y-64,objCrate) {image_angle=270;}
		}
	}

	// Magnet rotates to face a single adjecent crate
	if magState=1 and global.rotationMode=0
	{
		if place_meeting(x,y-16,objCrate) and //if only top
		!place_meeting(x,y+16,objCrate)   and
		!place_meeting(x-16,y,objCrate)   and
		!place_meeting(x+16,y,objCrate)   {image_angle=90;}
		
		if place_meeting(x,y+16,objCrate) and //if only bottom
		!place_meeting(x,y-16,objCrate)   and
		!place_meeting(x-16,y,objCrate)   and
		!place_meeting(x+16,y,objCrate)   {image_angle=270;}
		
		if place_meeting(x-16,y,objCrate) and //if only left
		!place_meeting(x,y-16,objCrate)   and
		!place_meeting(x,y+16,objCrate)   and
		!place_meeting(x+16,y,objCrate)   {image_angle=180;}
		
		if place_meeting(x+16,y,objCrate) and //if only right
		!place_meeting(x,y-16,objCrate)   and
		!place_meeting(x,y+16,objCrate)   and
		!place_meeting(x-16,y,objCrate)   {image_angle=0;}

		// magnet faces closest crate to front when cornered
		if place_meeting(x+16,y,objCrate) and place_meeting(x,y-16,objCrate) // top right check
		and !place_meeting(x-16,y,objCrate) and !place_meeting(x,y+16,objCrate)
		{
			if image_angle==180	{image_angle=90;}
			if image_angle==270	{image_angle=0;}
		}
		if place_meeting(x-16,y,objCrate) and place_meeting(x,y+16,objCrate) // bottom left check
		and !place_meeting(x+16,y,objCrate) and !place_meeting(x,y-16,objCrate)
		{
			if image_angle==90	{image_angle=180;}
			if image_angle==0	{image_angle=270;}
		}
		if place_meeting(x,y-16,objCrate) and place_meeting(x-16,y,objCrate) // top left check
		and !place_meeting(x,y+16,objCrate) and !place_meeting(x+16,y,objCrate)
		{
			if image_angle==0	{image_angle=90;}
			if image_angle==270 {image_angle=180;}
		}
		if place_meeting(x,y+16,objCrate) and place_meeting(x+16,y,objCrate) // bottom right check
		and !place_meeting(x,y-16,objCrate) and !place_meeting(x-16,y,objCrate)
		{
			if image_angle==180	{image_angle=270;}
			if image_angle==90	{image_angle=0;}
		}
		
	}
	

// ---- DELAYED GAME RESET ----
if resetTimer=32 and global.complete=0 and !place_meeting(x,y,objExit)
{	
	speed=0;
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
	if image_alpha>0 {image_alpha-=1/30;}	//fade player out on completion
	if image_alpha<=0 {visible=0;}
	if !instance_exists(objComplete)		//level complete screen
	{	
		layer_create(150,"insOverlay");
		instance_create_layer(0,0,"insOverlay", objComplete);
	}
}