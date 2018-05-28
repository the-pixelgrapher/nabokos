draw_set_alpha(alpha);

draw_set_colour(scrCol(2));
draw_roundrect_ext(x,y,x+562,y+64,32,32,0);
draw_set_colour(c_white);
draw_set_font(fntDIN2);
draw_set_halign(1);
draw_set_valign(0);
draw_text(512,y+23,"PRESS SPACE TO CONTINUE");

draw_set_alpha(1);