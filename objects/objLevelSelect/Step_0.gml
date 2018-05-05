next = max(keyboard_check_pressed(vk_right), keyboard_check_pressed(ord("D")), 0);
prev = max(keyboard_check_pressed(vk_left), keyboard_check_pressed(ord("A")), 0);
rowu = max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
rowd = max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

if prev=1 {select-=1; audio_play_sound(sndClick2,0,0);}
if next=1 {select+=1; audio_play_sound(sndClick2,0,0);}
if rowu=1 {select-=7; audio_play_sound(sndClick2,0,0);}
if rowd=1 {select+=7; audio_play_sound(sndClick2,0,0);}

if select>6 {select=0;}
if select<0 {select=6;}

if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space) or
keyboard_check_pressed(ord("E"))
{
	if global.sound=1 {audio_play_sound(sndClick,0,0);}
	room_goto(select+3);
}