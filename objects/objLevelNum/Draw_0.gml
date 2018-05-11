// ---- LEVEL NUMBER ----
if levelNTimer>-61
{	
	draw_set_halign(0);
	draw_set_colour($F5F5F5);
	draw_set_alpha(easea);
	draw_roundrect_ext(385-32, easey-56 ,385+254+32, easey+56, 64, 64, 0);
	draw_sprite_ext(sprSquare,0,581,easey,1,1,0,scrCol(global.levelState[global.level]),easea);
	draw_set_font(fntDIN3);
	draw_set_colour($545454);
	draw_set_valign(1);
	draw_text(409, easey+1 ,"LEVEL");
	draw_set_font(fntDIN4);
	draw_set_halign(1);
	draw_set_colour(c_white);
	if (string_length(global.level) == 1)
	{
		draw_text(581,easey+1 ,string(0)+string(global.level));	//add 0 to numbers with a single digit
	}
	else 
	{
		if (global.level > 19 or global.level == 11) {draw_text(581, easey+1, global.level);}
		else {draw_text(581-1, easey+1, global.level);} //text visual offset correction
	}
	
	draw_set_alpha(1);
}