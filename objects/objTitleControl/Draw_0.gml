draw_set_alpha(easea);
draw_sprite(sprTitleText,0,512,144+easex);
draw_sprite(sprGoalGraphic,0,easex,379);
draw_sprite_ext(sprGoalGraphic,0,1024-easex,296,-1,-1,0,c_white,easea);
draw_sprite(sprMagCrate,0,811-easex*1.5,390);

draw_set_font(fntDIN2);
draw_set_halign(0);
draw_set_valign(0);

for (var i = 0; i < 5; i++;)
{
	var yy = i * 50;
	if (i = 0) 
	{
		if global.levelState[0]=2 and global.levelState[room_last-5] < 2 {var item = "CONTINUE";}
		else 
		{
			if global.levelState[room_last-5] = 2 {var item = "LEVEL EDITOR"}
			else {var item = "START GAME";}
		}
	}
	if (i == 1) {item = "LEVEL SELECTION"}
	if (i == 2) {item = "CONTROLS"}
	if (i == 3) {item = "OPTIONS"}
	if (i == 4) {item = "EXIT GAME"}
		
	if (select = i)
	{
		if (i = 4)	{draw_set_colour($5d3ae9);}
		else		{draw_set_colour(scrCol(2));}
	}
	else			{draw_set_colour($4D4D4D);}
	draw_text((1*(i/3+1))*easex + x, y + yy, item);
}

draw_set_colour($4D4D4D);
draw_rectangle(0,760,1024,768,0);
draw_set_colour(scrCol(2));
draw_rectangle(0,760,easeP*round(1024*(global.levelComplete/(room_last-4))),768,0);