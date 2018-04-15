// ---- LEVEL NUMBER POPUP ANIMATION ----
if !instance_exists(objFadeWipe) and levelNTimer>-31
{
	levelNTimer-=1;
	
	if levelNTimer>0
	{
		if counter<1 {counter+=1/30};
		easex=ease("easeoutquart",counter)*amplify-96;
		easea=ease("easeoutcubic",counter*2);
	}
	
	if levelNTimer<=0 or global.complete=1
	{
		if counter2<1 {counter2+=1/30};
		easex=ease("easeoutquart",counter2)*amplify2+176-96;
		easea=1-ease("easeoutcubic",counter2*2);
	}
}

// ---- ON/OFF INDICATOR ----
image_index=magState

// ---- ROTATION INTERPOLATION KEYFRAME START ----
//if image_angle=0 or image_angle=90 or image_angle=180 or image_angle=270 {rotBefore=image_angle}

// ---- GRID LOCK ----
if place_snapped(32,32) and !place_snapped(64,32) and !place_snapped(32,64)
{

	// ---- MOVEMENT ----
	if global.stepMovement=0 //player will move continuously
	{
		if keyboard_check(vk_right)=1 and !place_meeting(x+64,y,objWall){speed=64/spdInv; direction=0;  }
		if keyboard_check(vk_up)=1    and !place_meeting(x,y-64,objWall){speed=64/spdInv; direction=90; }
		if keyboard_check(vk_left)=1  and !place_meeting(x-64,y,objWall){speed=64/spdInv; direction=180;}
		if keyboard_check(vk_down)=1  and !place_meeting(x,y+64,objWall){speed=64/spdInv; direction=270;}
	}
	
	if global.stepMovement=1 //player will only move one square at a time
	{
		if keyboard_check_pressed(vk_right)=1 and !place_meeting(x+64,y,objWall)
		{speed=64/spdInv; direction=0;  }
		
		if keyboard_check_pressed(vk_up)=1    and !place_meeting(x,y-64,objWall)
		{speed=64/spdInv; direction=90; }
		
		if keyboard_check_pressed(vk_left)=1  and !place_meeting(x-64,y,objWall)
		{speed=64/spdInv; direction=180;}
		
		if keyboard_check_pressed(vk_down)=1  and !place_meeting(x,y+64,objWall)
		{speed=64/spdInv; direction=270;}
	}
	
	// ---- STOPPING ----
	if global.stepMovement=0
		{
		if keyboard_check(vk_right)=0 and direction=0   {speed=0;} //stop if key is no longer pressed
		if keyboard_check(vk_up)=0    and direction=90  {speed=0;}
		if keyboard_check(vk_left)=0  and direction=180 {speed=0;}
		if keyboard_check(vk_down)=0  and direction=270 {speed=0;}
	
		if keyboard_check(vk_left)=1 and keyboard_check(vk_right)=1 or
		   keyboard_check(vk_up)=1   and keyboard_check(vk_down)=1  or
		   keyboard_check(vk_nokey)=1
		{
			speed=0;
		}
	}
	
	if global.stepMovement=1
	{
		if keyboard_check_pressed(vk_right)=0 and keyboard_check_pressed(vk_up)=0
		and keyboard_check_pressed(vk_down)=0 and keyboard_check_pressed(vk_left)=0
		{speed=0;}
	}
}

// ---- MAGNET ROTATION ----

	//image_angle = direction if powered off or not adjecent a crate.
	if  global.rotationMode=1
	{
		if magState=0
		{
			if keyboard_check(vk_right)=1 {image_angle=0;}
			if keyboard_check(vk_up)=1    {image_angle=90;}
			if keyboard_check(vk_left)=1  {image_angle=180;}
			if keyboard_check(vk_down)=1  {image_angle=270;}
		}
		
		if magState=1
		{
			if keyboard_check(vk_right)=1 and !place_meeting(x-16,y,objCrate) {image_angle=0;}
			if keyboard_check(vk_up)=1    and !place_meeting(x,y+16,objCrate) {image_angle=90;}
			if keyboard_check(vk_left)=1  and !place_meeting(x+16,y,objCrate) {image_angle=180;}
			if keyboard_check(vk_down)=1  and !place_meeting(x,y-16,objCrate) {image_angle=270;}
		}
	}


	// Magnet rotates to face a single adjecent crate
	if speed=0 and magState=1 and global.rotationMode=0
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

		if global.allowCornerRotate=1
		{
			// magnet faces direction of movement when cornered by crates
			if place_meeting(x+16,y,objCrate) and place_meeting(x,y-16,objCrate) // top right check
			{
				if keyboard_check(vk_right)    {image_angle=0;}
				if keyboard_check(vk_up)       {image_angle=90;}
			}
			if place_meeting(x-16,y,objCrate) and place_meeting(x,y+16,objCrate) // bottom left check
			{
				if keyboard_check(vk_down)     {image_angle=270;}
				if keyboard_check(vk_left)     {image_angle=180;}
			}
			if place_meeting(x,y-16,objCrate) and place_meeting(x-16,y,objCrate) // top left check
			{
				if keyboard_check(vk_up)       {image_angle=90;}
				if keyboard_check(vk_left)     {image_angle=180;}
			}
			if place_meeting(x,y+16,objCrate) and place_meeting(x+16,y,objCrate) // bottom right check
			{
				if keyboard_check(vk_down)     {image_angle=270;}
				if keyboard_check(vk_right)    {image_angle=0;}
			}
		}
	}

// ---- SNAPPING SAFEGUARD ----
/*
if keyboard_check(vk_right)=0 and
   keyboard_check(vk_left)=0  and
   keyboard_check(vk_up)=0    and
   keyboard_check(vk_down)=0
{	
	if noMoveTimer<=64 {noMoveTimer+=64/spdInv}
}
*/

// ---- GRID LOCK ----
if place_snapped(32,32) and !place_snapped(64,32) and !place_snapped(32,64)
{
	// ---- MAGNET MEACHANICS ----
	
		//000
		if place_meeting(x+16,y,objCrate) and image_angle==0 and !place_meeting(x-64,y,objMagbox000)
		{
			instance_create_layer(x-64,y,"insGoals",objMagbox000);
		}
		if !place_meeting(x+16,y,objCrate) or image_angle<>0 or magState=0
		{instance_destroy(objMagbox000);}
	
		//090
		if place_meeting(x,y-16,objCrate) and image_angle==90 and !place_meeting(x,y+64,objMagbox090)
		{
			instance_create_layer(x,y+64,"insGoals",objMagbox090);
		}
		if !place_meeting(x,y-16,objCrate) or image_angle<>90 or magState=0
		{instance_destroy(objMagbox090);}
	
		//180
		if place_meeting(x-16,y,objCrate) and image_angle==180 and !place_meeting(x+64,y,objMagbox180)
		{
			instance_create_layer(x+64,y,"insGoals",objMagbox180);
		}
		if !place_meeting(x-16,y,objCrate) or image_angle<>180 or magState=0
		{instance_destroy(objMagbox180);}
	
		//270
		if place_meeting(x,y+16,objCrate) and image_angle==270 and !place_meeting(x,y-64,objMagbox270)
		{
			instance_create_layer(x,y-64,"insGoals",objMagbox270);
		}
		if !place_meeting(x,y+16,objCrate) or image_angle<>270 or magState=0
		{instance_destroy(objMagbox270);}
	
}

// ---- ROTATION INTERPOLATION KEYFRAME END ----
//if image_angle=0 or image_angle=90 or image_angle=180 or image_angle=270 {rotAfter=image_angle;}

// ---- COMPLETION CODE ----
if global.complete=1 and image_alpha>0 {image_alpha-=1/30;} //fade player out on completion
if global.complete=1 and !instance_exists(objComplete)    //level complete screen
	{
		instance_create_layer(0,0,"insPlayer", objComplete);
	}
if image_alpha<=0    {visible=0;} //player becomes invisible
if global.complete=1 {speed=0;}   //player movement locked on completion