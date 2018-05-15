if alpha>0 
{
	if global.lerpRot=1 
	{
		draw_sprite_ext(sprPlayer0,magState,x,y,1,1,rotI,c_white,alpha);
	}
	if global.lerpRot=0
	{
		draw_sprite_ext(sprPlayer0,magState,x,y,1,1,rotT,c_white,alpha);
	}
}

// ---- RESET LEVEL PROGRESS BAR ----
if !resetTimer=0 and !place_meeting(x,y,objExit)
{
	draw_set_valign(0);
	draw_set_halign(0);
	draw_set_colour($545454); //same colour as wall
	draw_set_font(fntDIN2);
	draw_text(448,670,"RESETTING ...");
	draw_set_colour(c_white); //white background
	draw_rectangle(448,700,448+128,704,0);
	if resetTimer<31 {draw_set_colour($6363E9);} //red counting up
	if resetTimer>=31 {draw_set_colour($0DA5F2);} //gold when resetting
	draw_rectangle(448,700,448+128*(resetTimer/32),704,0);
}
