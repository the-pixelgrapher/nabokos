if image_alpha>0 {draw_self();}

// ---- LEVEL NUMBER ----
if levelNTimer>-31
{
	draw_set_font(fntDIN);
	draw_set_colour(c_gray);
	draw_set_halign(0);
	draw_set_alpha(easea);
	draw_text(easex,96,global.level);
	draw_set_alpha(1);
}

// ---- RESET LEVEL PROGRESS BAR ----
if !resetTimer=0 and resetTimer<=32 and global.complete=0 and !place_meeting(x,y,objExit)
{
	draw_set_colour($545454); //same colour as wall
	draw_set_font(fntDIN2);
	draw_text(448,665,"RESETTING . . .");
	draw_set_colour(c_white); //white background
	draw_rectangle(448,695,448+128,699,0);
	if resetTimer<31 {draw_set_colour($6363E9);} //red counting up
	if resetTimer>=31 {draw_set_colour($0DA5F2);} //gold when resetting
	draw_rectangle(448,695,448+128*(resetTimer/32),699,0);
}