if easea>0
{	
	draw_set_colour(c_black);
	draw_set_alpha(0.0625*easea);
	draw_rectangle(0,0,room_width,room_height,0);
	draw_set_alpha(1);
	
	draw_set_colour(c_white);
	draw_set_circle_precision(40);
	draw_set_alpha(easea);
	draw_roundrect_ext(288,y+160,736,y+608,easer,easer,0);
	
	draw_set_font(fntDIN2);
	draw_set_halign(1);
	
	for (var i = 0; i < 5; i++;)
	{
		var yy = i * 64;
		if (i = 0) {var item = "MAIN MENU"}
		if (i = 1) {	item = "LEVEL SELECTION"}
		if (i = 2) {	item = "CONTROLS"}
		if (i = 3) {	item = "OPTIONS"}
		if (i = 4) {	item = "EXIT GAME"}
		
		if (select = i)
		{
			if (i = 4)	{draw_set_colour($5d3ae9);}
			else		{draw_set_colour($0DA5F2);}
		}
		else			{draw_set_colour($5c5c5c);}
		draw_text(512, y + yy + 248, item);
	}
}
draw_set_alpha(1);