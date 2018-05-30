

// ---- DRAW HOTBAR ----
draw_set_colour(c_white);
draw_rectangle(0,641,1024,768,0);

// ---- DRAW GRID ----
for (var ix = 0; ix < 9; ix += 1;) //draw horizontal lines
{
	var yo  = (ix * 64) + 128;
	
	draw_set_color($bfbfbf);
	draw_line(128,yo,896,yo);
}

for (var iy = 0; iy < 13; iy += 1;) //draw vertical lines
{
	var xo  = (iy * 64) + 128;
	
	draw_set_color($bfbfbf);
	draw_line(xo,128,xo,640);
}

// ---- DRAW SELECTION MARKER ----
draw_sprite(sprGSelect,0,sx,sy);
