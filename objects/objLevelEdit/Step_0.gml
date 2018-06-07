t += 1/120;
easex=ease("easeoutquint",t)*amplify-amplify;
easep=ease("easeoutquint",t);

scrControl();

// ---- GRID NAVIGATION ----
if keyLeftP == 1 or keyRightP == 1 or keyUpP == 1 or keyDownP == 1 {scrSound("tap");}

//single step movement
if keyLeftP == 1 {col--;}
if keyRightP == 1 {col++;}
if keyUpP == 1 {row--;}
if keyDownP == 1 {row++;}

//press and hold movement
if keyLeft == 1 {keyLeftTimer++;}
if keyRight == 1 {keyRightTimer++;}
if keyUp == 1 {keyUpTimer++;}
if keyDown == 1 {keyDownTimer++;}

if keyLeftR == 1 {keyLeftTimer = 0;}
if keyRightR == 1 {keyRightTimer = 0;}
if keyUpR == 1 {keyUpTimer = 0;}
if keyDownR == 1 {keyDownTimer = 0;}

if keyLeft == 1 and keyRight == 0 and keyLeftTimer > 10 and frac(keyLeftTimer/5)=0 and col > 0
{
	col--; scrSound("tap");
}

if keyRight == 1 and keyLeft == 0 and keyRightTimer > 10 and frac(keyRightTimer/5)=0 and col < 11
{
	col++; scrSound("tap");
}

if keyUp == 1 and keyDown == 0 and keyUpTimer > 10 and frac(keyUpTimer/5)=0 and row > 0
{
	row--; scrSound("tap");
}

if keyDown == 1 and keyUp == 0 and keyDownTimer > 10 and frac(keyDownTimer/5)=0 and row < 7
{
	row++; scrSound("tap");
}


row = clamp(row,0,7);
col = clamp(col,0,11);
	
sx = (col*64) + 128 + 32;
sy = (row*64) + 128 + 32;

sxL=lerp(sxL,sx,0.5);
syL=lerp(syL,sy,0.5);

filled = position_meeting(sx,sy,objGameObject); //whether selected square contains an object

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
if keyboard_check_pressed(ord("Q")) == 1
{
	irotT+=90;
	irot+=90;
}
if keyboard_check_pressed(ord("E")) == 1
{
	irotT-=90;
	irot-=90;
}
if irot == 360 {irot=0;}
if irot < 0 {irot=270;}
irotL=lerp(irotL,irotT,0.25);



#region // ---- PLACE OBJECT ----
if keyAct == 1 and !keyboard_check(ord("X"))
{	
	if iSelect=1
	{
		if !filled
		{
			instance_create_layer(sx-32,sy-32,"insWalls",objWall);
			scrSound("door");
		}
	}
	if iSelect=2
	{
		if !filled
		{
			with instance_create_layer(sx,sy,"insWallsM",objWallMb) {image_angle=objLevelEdit.irot;}
			scrSound("door");
		}
	}
	if iSelect=3 and !position_meeting(sx,sy,objSolid)
	{
		if filled=0 or position_meeting(sx,sy,objWireA) or position_meeting(sx,sy,objAND)
		or position_meeting(sx,sy,objXOR) or position_meeting(sx,sy,objGoal)
		{
			instance_create_layer(sx,sy,"insCrates",objCrate);
			scrSound("door");
		}
	}
	if iSelect=4 and !position_meeting(sx,sy,objGoal)
	{
		if !filled or position_meeting(sx,sy,objCrate) or position_meeting(sx,sy,objPlayer)
		{
			instance_create_layer(sx,sy,"insGoals",objGoal);
			scrSound("door");
		}
	}
	if iSelect=5 and !position_meeting(sx,sy,objElectric)
	{
		if !filled or position_meeting(sx,sy,objCrate) or position_meeting(sx,sy,objPlayer)
		{
			instance_create_layer(sx,sy,"insWire",objWireA);
			scrSound("door");
		}
	}
	if iSelect=6 and !position_meeting(sx,sy,objElectric)
	{
		if !filled or position_meeting(sx,sy,objCrate) or position_meeting(sx,sy,objPlayer) 
		{
			with instance_create_layer(sx,sy,"insWire",objAND) {image_angle=objLevelEdit.irot;}
			scrSound("door");
		}
	}
	if iSelect=7 and !position_meeting(sx,sy,objElectric)
	{
		if !filled or position_meeting(sx,sy,objCrate) or position_meeting(sx,sy,objPlayer)
		{
			with instance_create_layer(sx,sy,"insWire",objXOR) {image_angle=objLevelEdit.irot;}
			scrSound("door");
		}
	}
	if iSelect=8
	{
		if !filled
		{
			instance_destroy(objExit);
			with instance_create_layer(sx,sy,"insWallsM",objExit) {image_angle=objLevelEdit.irot;}
			scrSound("door");
		}
	}
	if iSelect=9 and !position_meeting(sx,sy,objPlayer)
	{
		if filled=0 or position_meeting(sx,sy,objWireA) or position_meeting(sx,sy,objAND) or 
		position_meeting(sx,sy,objXOR) or position_meeting(sx,sy,objGoal)
		{
			instance_destroy(objPlayer);
			with instance_create_layer(sx,sy,"insPlayer",objPlayer) {image_angle=objLevelEdit.irot;}
			scrSound("door");
		}
	}
}
#endregion

// ---- REMOVE OBJECT ----
if keyboard_check_pressed(ord("X")) and filled == 1
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
	
	if near!="none" 
	{
		instance_destroy(near);
		scrSound("click");
	}
}

if keyAct == 1 or keyboard_check(ord("X"))
{
	if alarm[0] == -1 {alarm[0] = 60*5;}
}


filled = position_meeting(sx,sy,objGameObject); //whether selected square contains an object