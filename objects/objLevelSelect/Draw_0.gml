draw_set_colour($4D4D4D);
draw_set_alpha(ea);
draw_set_font(fntDIN3);
draw_set_valign(0);
draw_set_halign(1);
draw_text(512,128+ex/1.5,"LEVEL SELECTION");

draw_set_colour(scrCol(2));
draw_line_width(512-178*ea,192,512+177*ea,192,2); // heading underline

if objCustomLevels.counter != 1 or objCustomLevels.drawCLevel=0
{
	draw_set_valign(1);
	draw_set_colour(c_white);
	draw_set_font(fntDIN4);

	var rs = floor(select / 7),
		xs = (select * 128) - (rs * 896) + 128,
		ys = rs * 128 + 288;
	
	draw_set_alpha(ea*(1-objCustomLevels.easea));
	draw_sprite(sprSelect,activd,xs,ys-ex);
	
	// ---- DRAW LEVEL SELECTION GRID ----
	for (var i = 0; i < 21; i++)
	{
		var rn = floor(i / 7),					//row number
			xo = (i * 128) - (rn * 896) + 128,	//x origin pint
			yo = rn * 128 + 288 - ex			//y origin point
	
		if ( i == 20) {draw_sprite_ext(sprSquare,0,xo,yo,1,1,0,scrCol(4),ea)}
		else		  {draw_sprite_ext(sprSquare,0,xo,yo,1,1,0,scrCol(global.levelState[i]),ea)}
	
		if (global.levelState[i] == 0) {draw_set_alpha(0.67);}	//text is faded when level is locked
		else						   {draw_set_alpha(1);}
	
		if (string_length(i) == 1)
		{
			draw_text(xo, yo+1 ,string(0)+string(i));			//add 0 to numbers with a single digit
		}
		else 
		{
			if (i > 19 or i == 11)	{draw_text(xo, yo+1, i);}
			else					{draw_text(xo-1, yo+1, i);} //text visual offset correction
		}
	
	}
}

draw_set_colour(scrCol(0));
draw_set_font(fntDIN);
draw_set_halign(0);
draw_set_valign(0);

draw_set_alpha(ea*(1-objCustomLevels.easea));
draw_sprite(sprKeyFunc5,1,781,646 - ex*1.5);
draw_text(821,654 - ex*1.5,"LEVEL EDITOR");

draw_set_alpha(1);