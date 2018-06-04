scrControl();
if savedTimer > 0 {savedTimer--;}
if savedTimer = 0 {soundTimer = 0;}


// ---- GRID NAVIGATION ----
if activd == 0
{
	if keyLeftP == 1 or keyRightP == 1 or keyUpP == 1 or keyDownP == 1 {scrSound("tap");}
	
	if keyLeftP == 1 {col--;}
	if keyRightP == 1 {col++;}
	if keyUpP == 1 {row --;}
	if keyDownP == 1 {row ++;}
	
	row = clamp(row,0,7);
	col = clamp(col,0,11);
	
	sx = (col*64) + 128 + 32;
	sy = (row*64) + 128 + 32;
}

// ---- HOTBAR OBJECT SELECTION ----
if keyboard_check_pressed(ord("1")) {iSelect=1;}
if keyboard_check_pressed(ord("2")) {iSelect=2;}
if keyboard_check_pressed(ord("3")) {iSelect=3;}
if keyboard_check_pressed(ord("4")) {iSelect=4;}
if keyboard_check_pressed(ord("5")) {iSelect=5;}
if keyboard_check_pressed(ord("6")) {iSelect=6;}
if keyboard_check_pressed(ord("7")) {iSelect=7;}
if keyboard_check_pressed(ord("8")) {iSelect=8;}
if keyboard_check_pressed(ord("9")) {iSelect=9;}

// ---- ROTATE ----
if keyboard_check_pressed(ord("Q"))=1
{
	irotT+=90;
	irot+=90;
}
if keyboard_check_pressed(ord("E"))=1
{
	irotT-=90;
	irot-=90;
}
if irot=360 {irot=0;}
if irot<0 {irot=270;}
irotL=lerp(irotL,irotT,0.25);

// ---- PLACE OBJECT ----
if keyActR == 1
{	
	if iSelect=1
	{
		if !position_meeting(sx,sy,objWall) {instance_create_layer(sx-32,sy-32,"insWalls",objWall);}
	}
	if iSelect=2
	{
		if !position_meeting(sx,sy,objWallMb) and !position_meeting(sx,sy,objSolid)
		{
			with instance_create_layer(sx,sy,"insWallsM",objWallMb) {image_angle=objLevelEdit.irot;}
			
		}
	}
	if iSelect=3
	{
		if !position_meeting(sx,sy,objCrate) {instance_create_layer(sx,sy,"insCrates",objCrate);}
	}
	if iSelect=4
	{
		if !position_meeting(sx,sy,objGoal) {instance_create_layer(sx,sy,"insGoals",objGoal);}
	}
	if iSelect=5
	{
		if !position_meeting(sx,sy,objWireA) {instance_create_layer(sx,sy,"insWire",objWireA);}
	}
	if iSelect=6
	{
		if !position_meeting(sx,sy,objAND) and !position_meeting(sx,sy,objSolid)
		{
			with instance_create_layer(sx,sy,"insWire",objAND) {image_angle=objLevelEdit.irot;}
			
		}
	}
	if iSelect=7
	{
		if !position_meeting(sx,sy,objXOR) and !position_meeting(sx,sy,objSolid)
		{
			with instance_create_layer(sx,sy,"insWire",objXOR) {image_angle=objLevelEdit.irot;}
			
		}
	}
	if iSelect=8
	{
		if !position_meeting(sx,sy,objExit) and !position_meeting(sx,sy,objSolid)
		{
			with instance_create_layer(sx,sy,"insWallsM",objExit) {image_angle=objLevelEdit.irot;}
			
		}
	}
	if iSelect=9
	{
		if !position_meeting(sx,sy,objPlayer) and !position_meeting(sx,sy,objSolid)
		{
			instance_create_layer(sx,sy,"insPlayer",objPlayer);
		}
	}
	
	scrSound("click");
	scrSound("door");
}

// ---- REMOVE OBJECT ----
if keyboard_check_pressed(ord("X"))
{
	if position_meeting(sx,sy,objXOR) {near=instance_position(sx,sy,objXOR);}
	if position_meeting(sx,sy,objAND) {near=instance_position(sx,sy,objAND);}
	if position_meeting(sx,sy,objWireA) {near=instance_position(sx,sy,objWireA);}
	if position_meeting(sx,sy,objWallMb) {near=instance_position(sx,sy,objWallMb);}
	if position_meeting(sx,sy,objExit) {near=instance_position(sx,sy,objExit);}
	if position_meeting(sx,sy,objGoal) {near=instance_position(sx,sy,objGoal);}
	if position_meeting(sx,sy,objCrate) {near=instance_position(sx,sy,objCrate);}
	if position_meeting(sx,sy,objPlayer) {near=instance_position(sx,sy,objPlayer);}
	if position_meeting(sx,sy,objWall) {near=instance_position(sx,sy,objWall);}
	
	instance_destroy(near);
	scrSound("click");
}