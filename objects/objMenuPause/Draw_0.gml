if drawMenuPause=1 
{	
	draw_set_colour(c_black);
	draw_set_alpha(0.0625);
	draw_rectangle(0,0,room_width,room_height,0);
	
	draw_set_colour(c_white);
	draw_set_alpha(1);
	draw_roundrect_ext(288,y+160,736,y+608,64,64,0);
	
	
	draw_set_font(fntDIN2);
	draw_set_halign(1);
	
	if select=0 {draw_set_colour($0DA5F2);}
	else {draw_set_colour($5c5c5c);}
	draw_text(512,y+248,"MAIN MENU");
	
	if select=1 {draw_set_colour($0DA5F2);}
	else {draw_set_colour($5c5c5c);}
	draw_text(512,y+312,"LEVEL SELECTION");
	
	if select=2 {draw_set_colour($0DA5F2);}
	else {draw_set_colour($5c5c5c);}
	draw_text(512,y+376,"CONTROLS");
	
	if select=3 {draw_set_colour($0DA5F2);}
	else {draw_set_colour($5c5c5c);}
	draw_text(512,y+440,"OPTIONS");
	
	if select=4 {draw_set_colour($5d3ae9);}
	else {draw_set_colour($5c5c5c);}
	draw_text(512,y+504,"EXIT GAME");
}