var next = max(keyboard_check_pressed(vk_right), keyboard_check_pressed(ord("D")), 0),
	prev = max(keyboard_check_pressed(vk_left), keyboard_check_pressed(ord("A")), 0),
	rowu = max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0),
	rowd = max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

if prev=1 {select-=1;}
if next=1 {select+=1;}
if rowu=1 {select-=7;}
if rowd=1 {select+=7;}
if rowu=1 or rowd=1 or prev=1 or next=1 {scrSound("tap");}

if select>20 {select=0;}
if select<0 {select=20;}

if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space) or
keyboard_check_pressed(ord("E"))
{
	if !instance_exists(objFadeWipe)
	{
		scrSound("click");
		global.fadeMode="outLN";
		instance_create_layer(1024,0,"insPostprocess",objFadeWipe);
	}
}