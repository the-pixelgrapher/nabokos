if easea>0
{
	
	draw_set_colour($f5f5f5);
	draw_set_circle_precision(40);
	draw_set_alpha(easea);
	if room == 1 {draw_roundrect_ext(255-64,yo+127,768+64,yo+640,easer,easer,0);}
	else {draw_roundrect_ext(255,yo+127,768,yo+640,easer,easer,0);}
	
	draw_set_colour(scrCol(0));
	draw_set_font(fntDIN2p5);
	draw_set_halign(1);
	draw_set_valign(0);
	draw_text(512,yo+192,"OPTIONS");
	draw_set_colour(scrCol(2));
	draw_line_width(512-47*easea,yo+230,512+47*easea,yo+230,2); // heading underline
	
	draw_sprite(sprOpSelect,0,311,yo+279+56*select); //selection rectangle
	
	draw_set_font(fntDIN);
	draw_set_halign(0);
	draw_set_colour(scrCol(0));
	
	draw_sprite(sprState,global.stepMovement,320,yo+288);
	draw_text(379,yo+291,"SINGLE STEP MOVEMENT");
	
	draw_set_alpha((1-0.5*global.invisCrates)*easea);
	draw_sprite(sprState,global.rotationMode,320,yo+344);
	draw_text(379,yo+347,"MANUAL MAGNET ROTATION");
	draw_set_alpha(easea);
	
	draw_sprite(sprState,global.invisCrates,320,yo+400);
	draw_text(379,yo+403,"INVISIBLE CRATE CHALLENGE");
	
	draw_sprite(sprState,global.sound,320,yo+456);
	draw_text(379,yo+459,"SOUND EFFECTS");
	
	
	draw_sprite(sprKeySpace,0,376,yo+544)
	draw_text(447,yo+552,"TOGGLE");
	
	draw_sprite(sprKeyEsc,0,542,yo+544)
	draw_text(604,yo+552,"CLOSE");
}