var next = max(keyboard_check_pressed(vk_right), keyboard_check_pressed(ord("D")), 0),
	prev = max(keyboard_check_pressed(vk_left), keyboard_check_pressed(ord("A")), 0),
	rowu = max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0),
	rowd = max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);
	
if !activd = 1
{
	if prev=1 {select--;}
	if next=1 {select++;}
	if rowu=1 {select -= 7;}
	if rowd=1 {select += 7;}
	if rowu=1 or rowd=1 or prev=1 or next=1 {scrSound("tap");}
}
if select > clamp(levelUnlocked,0,20) {select = 0;} //do not allow user to select locked levels
if select < 0 {select = clamp(levelUnlocked,0,20);}

if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("E"))
{
	if !instance_exists(objFadeWipe)
	{
		activd = 1;
		scrSound("click");
	}
}
if keyboard_check_released(vk_enter) or keyboard_check_released(vk_space) or keyboard_check_released(ord("E"))
{
	if !instance_exists(objFadeWipe) and activd == 1
	{
		global.fadeMode="outLN";
		instance_create_layer(1024,0,"insPostprocess",objFadeWipe);
	}
}