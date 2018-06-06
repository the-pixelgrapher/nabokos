// ---- TITLE ----
draw_set_alpha(easea);
draw_set_font(fntDIN2p5);
draw_set_halign(0);
draw_set_valign(0);
draw_set_colour(scrCol(0));
draw_text(128,47+easex,"LEVEL EDITOR");
draw_set_colour(scrCol(4));
draw_line_width(128,84+easex,288,84+easex,2); // heading underline

// ---- EDITING PROMPTS ----
draw_set_colour(scrCol(0));
draw_set_font(fntDIN);

if filled=1 or keyboard_check(ord("X")) {draw_set_alpha(0.5*easea)}
else {draw_set_alpha(easea)}
draw_sprite(sprKeySpace,0,468,48+easex);
draw_text(540,55+easex,"PLACE");

if filled=1 {draw_set_alpha(easea)}
else {draw_set_alpha(0.5*easea)}
draw_sprite(sprKeyX,0,621,48+easex);
draw_text(661,55+easex,"REMOVE");

if iSelect=2 or iSelect=6 or iSelect=7 or iSelect=8 or iSelect=9 {draw_set_alpha(easea)}
else {draw_set_alpha(0.5*easea)}
draw_sprite(sprKeyQ,0,755,48+easex);
draw_sprite(sprKeyE,0,795,48+easex);
draw_text(835,55+easex,"ROTATE");

if global.cValid[global.cLevel]=1 or instance_exists(objPlayer) {draw_set_alpha(easea)}
else {draw_set_alpha(0.5*easea)}
draw_sprite(sprKeyFunc5,0,817,677-easex);
draw_text(857,684-easex,"PLAY");

draw_set_alpha(easea)

// ---- DRAW HOTBAR ----

var iSelectX = 64 * (clamp(iSelect,1,9)-1);

draw_sprite(sprISelect,0,133+iSelectX,664)

draw_set_font(fntDIN2);
draw_set_halign(1);

draw_sprite_ext(sprWall,0,144+(64*0),674-easex,0.5,0.5,0,c_white,easea);
draw_text(160,712-easex,"1");

draw_sprite_ext(sprWallM,0,160+(64*1),690-easex,0.5,0.5,irotL,c_white,easea);
draw_text(160+(64*1),712-easex,"2");

draw_sprite_ext(sprCrate,0,160+(64*2),690-easex,0.5,0.5,0,c_white,easea);
draw_text(160+(64*2),712-easex,"3");

draw_sprite_ext(sprGoal,0,160+(64*3),690-easex,0.5,0.5,0,c_white,easea);
draw_text(160+(64*3),712-easex,"4");

draw_sprite_ext(sprWireH,0,160+(64*4),690-easex,0.5,0.5,0,c_white,easea);
draw_text(160+(64*4),712-easex,"5");

draw_sprite_ext(sprAND,0,160+(64*5),690-easex,0.5,0.5,irotL,c_white,easea);
draw_text(160+(64*5),712-easex,"6");

draw_sprite_ext(sprXOR,0,160+(64*6),690-easex,0.5,0.5,irotL,c_white,easea);
draw_text(160+(64*6),714-easex,"7");

draw_sprite_ext(sprExit,0,160+(64*7),690-easex,0.5,0.5,irotL,c_white,easea);
draw_text(160+(64*7),714-easex,"8");

draw_sprite_ext(sprPlayer0,0,160+(64*8),690-easex,0.5,0.5,irotL,c_white,easea);
draw_text(160+(64*8),714-easex,"9");

// ---- DRAW GRID ----
draw_set_color($808080);
draw_set_alpha(0.33);

for (var ix = 0; ix < 9; ix += 1;) //draw horizontal lines
{
	var yo  = (ix * 64) + 128;
	draw_line(128,yo,896*easep,yo);
}

for (var iy = 0; iy < 13; iy += 1;) //draw vertical lines
{
	var xo  = (iy * 64) + 128;
	draw_line(xo,128,xo,640*easep);
}
draw_set_alpha(easea);
draw_set_colour(scrCol(4));
draw_line_width(127,640,896*easep,640,4); // heading underline

// ---- DRAW SELECTION MARKER ----
draw_sprite(sprGSelect,0,sxL,syL);

draw_set_alpha(1);