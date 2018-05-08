draw_set_colour($545454);
draw_set_alpha(1);
draw_set_font(fntDIN3);
draw_set_valign(0);
draw_set_halign(1);
draw_text(512,128,"LEVEL SELECTION");

draw_set_colour($0DA5F2);
draw_line_width(334,192,691,192,2);


draw_set_valign(1);
draw_set_colour(c_white);
draw_set_font(fntDIN4);


for (var i = 0; i < 21; i++;)
{
	
	{
		var xo = 128 + i * 128,
			yo = 288 + 128 * 0;
	}
	
	if i > 6 and i < 14 
	{
		xo = i * 128 - 768;
		yo = 288 + 128 * 1
	}
	
	if i > 13 and i < 21 
	{
		xo = i * 128 - 1664;
		yo = 288 + 128 * 2;
	}
	
	if select=i						{draw_sprite(sprLevelSelectBack,2,xo,yo);}
	else							{draw_sprite(sprLevelSelectBack,scrCol(global.levelState[i]),xo,yo);}
	if global.levelState[i]=0		{draw_set_alpha(0.67);}
	else							{draw_set_alpha(1);}
	if string_length(i) = 1
	{
		draw_text(xo,yo+1,(string(0) + string(i)));
	}
	else 
	{
		draw_text(xo,yo+1,i);
	}
	draw_set_alpha(1);
}