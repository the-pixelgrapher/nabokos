// ---- TITLE ----
draw_set_alpha(1);
draw_set_font(fntDIN2p5);
draw_set_halign(0);
draw_set_valign(0);
draw_set_colour(scrCol(0));
draw_text(128,47,"LEVEL EDITOR");
draw_set_colour(scrCol(2));
draw_line_width(128,84,288,84,2); // heading underline

// ---- EDITING PROMPTS ----
draw_set_colour(scrCol(0));
draw_set_font(fntDIN);

if filled=1 or keyboard_check(ord("X")) {draw_set_alpha(0.5)}
else {draw_set_alpha(1)}
draw_sprite(sprKeySpace,0,468,48);
draw_text(540,55,"PLACE");
draw_set_alpha(1);

if filled=1 {draw_set_alpha(1)}
else {draw_set_alpha(0.5)}
draw_sprite(sprKeyX,0,621,48);
draw_text(661,55,"REMOVE");
draw_set_alpha(1);

if iSelect=2 or iSelect=6 or iSelect=7 or iSelect=8 or iSelect=9 {draw_set_alpha(1)}
else {draw_set_alpha(0.5)}
draw_sprite(sprKeyQ,0,755,48);
draw_sprite(sprKeyE,0,795,48);
draw_text(835,55,"ROTATE");
draw_set_alpha(1);

draw_sprite(sprKeyF5,0,817,677);
draw_text(857,684,"SAVE");

if savedTimer > 0 {draw_sprite(sprSAVED,0,802,677);}


// ---- DRAW HOTBAR ----

var iSelectX = 64 * (clamp(iSelect,1,9)-1);

draw_sprite(sprISelect,0,133+iSelectX,664)

draw_set_font(fntDIN2);
draw_set_halign(1);

draw_sprite_ext(sprWall,0,144+(64*0),674,0.5,0.5,0,c_white,1);
draw_text(160,712,"1");

draw_sprite_ext(sprWallM,0,160+(64*1),690,0.5,0.5,irotL,c_white,1);
draw_text(160+(64*1),712,"2");

draw_sprite_ext(sprCrate,0,160+(64*2),690,0.5,0.5,0,c_white,1);
draw_text(160+(64*2),712,"3");

draw_sprite_ext(sprGoal,0,160+(64*3),690,0.5,0.5,0,c_white,1);
draw_text(160+(64*3),712,"4");

draw_sprite_ext(sprWireH,0,160+(64*4),690,0.5,0.5,0,c_white,1);
draw_text(160+(64*4),712,"5");

draw_sprite_ext(sprAND,0,160+(64*5),690,0.5,0.5,irotL,c_white,1);
draw_text(160+(64*5),712,"6");

draw_sprite_ext(sprXOR,0,160+(64*6),690,0.5,0.5,irotL,c_white,1);
draw_text(160+(64*6),714,"7");

draw_sprite_ext(sprExit,0,160+(64*7),690,0.5,0.5,irotL,c_white,1);
draw_text(160+(64*7),714,"8");

draw_sprite_ext(sprPlayer0,0,160+(64*8),690,0.5,0.5,irotL,c_white,1);
draw_text(160+(64*8),714,"9");

// ---- DRAW GRID ----
draw_set_color($808080);
draw_set_alpha(0.33);

for (var ix = 0; ix < 9; ix += 1;) //draw horizontal lines
{
	var yo  = (ix * 64) + 128;
	draw_line(128,yo,896,yo);
}

for (var iy = 0; iy < 13; iy += 1;) //draw vertical lines
{
	var xo  = (iy * 64) + 128;
	draw_line(xo,128,xo,640);
}
draw_set_alpha(1);
draw_set_colour(scrCol(4));
draw_line_width(127,640,896,640,4); // heading underline

// ---- DRAW SELECTION MARKER ----
draw_sprite(sprGSelect,0,sxL,syL);