scrControl();
	
if !activd == 1
{
	if keyLeftP == 1 {select--;}
	if keyRightP == 1 {select++;}
	if keyUpP == 1 {select -= 7;}
	if keyDownP == 1 {select += 7;}
	if keyLeftP == 1 or keyRightP == 1 or keyUpP == 1 or keyDownP == 1 {scrSound("tap");}
}
if select > clamp(global.levelUnlocked,0,20) {select = 0;} //do not allow user to select locked levels
if select < 0 {select = clamp(global.levelUnlocked,0,20);}

if keyActP == 1
{
	if global.fadeMode == "none" or global.fadeMode == "inLS"
	{
		activd = 1;
		scrSound("click");
	}
}
if keyActR == 1
{
	if (global.fadeMode == "none" or global.fadeMode == "inLS") and activd == 1
	{
		global.fadeMode="outLN";
		instance_create_layer(1024,0,"insPostprocess",objFadeWipe);
	}
}