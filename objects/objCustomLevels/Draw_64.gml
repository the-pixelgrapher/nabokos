if easea>0
{
	draw_set_colour(c_white);
	draw_set_circle_precision(40);
	draw_set_alpha(easea);
	draw_roundrect_ext(64,yo+64,1024-64,yo+768-64,easer,easer,0);
	
	draw_set_font(fntDIN2);
	draw_set_halign(1);
	draw_set_valign(0);
	draw_set_colour(scrCol(0));
	draw_text(512,yo+128,"KEYBOARD CONTROLS");
	draw_set_colour(scrCol(2));
	draw_line_width(408,yo+128+34,614,yo+128+34,2); // heading underline
	
}