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
	
	draw_sprite_ext(sprKeyArrow,0,512,yo+254,1,1,90,c_white,easea);
	draw_sprite_ext(sprKeyArrow,0,451,yo+315,1,1,180,c_white,easea);
	draw_sprite_ext(sprKeyArrow,0,512,yo+315,1,1,270,c_white,easea);
	draw_sprite_ext(sprKeyArrow,0,573,yo+315,1,1,0,c_white,easea);
	
	draw_sprite(sprE,state,362,yo+378);
	draw_sprite(sprSwitch,state,422,yo+389);
	draw_sprite(sprPlayer0,state,631,yo+405);
	draw_sprite(sprSpaceReset,0,304,yo+465);
	
	draw_set_colour($F5F5F5);
	draw_roundrect_ext(304,yo+586,720,yo+640,32,32,0);
	draw_set_colour(scrCol(0));
	draw_set_font(fntDIN);
	draw_text(512,yo+606,"PRESS SPACE TO CONTINUE");
}
draw_set_alpha(1);