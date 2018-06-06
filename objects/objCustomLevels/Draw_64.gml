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
	draw_line_width(420,yo+305+36,605,yo+305+36,2); // heading underline
	
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
		if i = 1 {draw_text(259+128*i,yo+457,string("C")+string(i));} //add C to number
		else draw_text(258+128*i,yo+457,string("C")+string(i));	
		
	}
	
	draw_set_colour($f5f5f5);
	draw_set_font(fntDIN);
	draw_set_halign(0);
	draw_set_valign(0);
	
	draw_set_alpha(clamp(easea-(!global.cValid[select]/2),0,1));
	draw_sprite(sprKeySpace,1,309,576+yo);
	draw_text(381,583+yo,"PLAY");
	
	draw_set_alpha(easea)
	draw_sprite(sprKeyE,1,483,576+yo);
	draw_text(523,583+yo,"EDIT");
	
	draw_set_alpha(clamp(easea-(!global.cLevelState[select]/2),0,1));
	draw_sprite(sprKeyX,1,620,576+yo);
	draw_text(660,583+yo,"DELETE");
	
	draw_set_alpha(easea)
	if deleteTimer > 0
	{
		//draw_line_width_colour(620,600+yo,620+100*(deleteTimer/60),600+yo,4,$f5f5f5,scrCol(2));
		draw_line_width(620,620+yo,620+100*(deleteTimer/60),620+yo,4);
	}
}
draw_set_alpha(1);