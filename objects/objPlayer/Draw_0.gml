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

// ---- RESET LEVEL PROGRESS ----
if !resetTimer=0 and resetTimer<=30
{
	draw_set_colour($545454);
	draw_set_font(fntDIN2);
	draw_text(448,665,"RESETTING . . .");
	draw_set_colour($6363E9);
	draw_rectangle(448,695,448+128*(resetTimer/30),699,0);
}

// ---- MAGNET TOGGLE ERROR	----
if offError>0 and global.complete=0
{
	draw_set_colour($545454);
	draw_set_font(fntDIN2);
	draw_text(320,64,"You cannot turn the magnet off while moving.");
}