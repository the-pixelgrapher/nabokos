if image_alpha>0 {draw_self();}

// ---- LEVEL NUMBER ----
if !instance_exists(objFadeIN) and !instance_exists(objFadeINr) and levelNTimer>-31
{
	draw_set_font(fntDIN);
	draw_set_colour(c_gray);
	draw_set_halign(0);
	draw_set_alpha(easea);
	draw_text(easex,96,global.level);
	draw_set_alpha(1);
}
