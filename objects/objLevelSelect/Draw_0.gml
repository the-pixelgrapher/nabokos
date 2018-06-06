draw_set_colour($4D4D4D);
draw_set_alpha(1);
draw_set_font(fntDIN3);
draw_set_valign(0);
draw_set_halign(1);
draw_text(512,128,"LEVEL SELECTION");

draw_set_colour(scrCol(2));
draw_line_width(334,192,691,192,2); // heading underline

if objCustomLevels.counter != 1 or objCustomLevels.drawCLevel=0
{
	draw_set_valign(1);
	draw_set_colour(c_white);
	draw_set_font(fntDIN4);

	var rs = floor(select / 7),
		xs = (select * 128) - (rs * 896) + 128,
		ys = rs * 128 + 288;
	
	draw_sprite(sprSelect,activd,xs,ys);
	
	// ---- DRAW LEVEL SELECTION GRID ----
	for (var i = 0; i < 21; i++)
	{
		var rn = floor(i / 7),					//row number
			xo = (i * 128) - (rn * 896) + 128,	//x origin pint
			yo = rn * 128 + 288,				//y origin point
	
		if ( i == 20) {draw_sprite_ext(sprSquare,0,xo,yo,1,1,0,scrCol(4),1)}
		else		  {draw_sprite_ext(sprSquare,0,xo,yo,1,1,0,scrCol(global.levelState[i]),1)}
	
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
	
		draw_set_alpha(1);
	}

}