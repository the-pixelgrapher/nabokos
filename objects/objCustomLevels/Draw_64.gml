if easea>0
{
	draw_set_colour(scrCol(0));
	draw_set_circle_precision(40);
	draw_set_alpha(easea);
	draw_roundrect_ext(95,yo+241,1024-96,yo+672,easer,easer,0);
	
	draw_set_font(fntDIN2p5);
	draw_set_halign(1);
	draw_set_valign(0);
	draw_set_colour($f5f5f5);
	draw_text(512,yo+305,"CUSTOM LEVELS");
	draw_set_colour(scrCol(4));
	draw_line_width(408,yo+305+36,614,yo+305+36,2); // heading underline
	
	if keyAct=0 {draw_set_alpha(0.5*easea);}
	else draw_set_alpha(1*easea);
	draw_sprite(sprSelect,keyAct,259+128*select,yo+456);
	draw_set_alpha(easea);
	
	draw_set_font(fntDIN4);
	draw_set_halign(1);
	draw_set_valign(1);
	for(var i = 0; i < 5; i++)
	{
		draw_sprite_ext(sprSquare,!global.cLevelState[i],259+128*i,yo+456,1,1,0,$f5f5f5,easea);
		
		if global.cLevelState[i]=0 {draw_set_colour($f5f5f5);}
		else {draw_set_colour(scrCol(0));}
		draw_text(259+128*i,yo+457,string("C")+string(i));	//add C to number
		
	}
}