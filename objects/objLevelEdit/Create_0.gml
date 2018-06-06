activd=0;
row=0;
col=0;
iSelect=1;
filled=0;
near="none";
irot=0;
irotT=0;
irotL=0;
savedTimer=0;
soundTimer=0;
sx=128+32;
sy=128+32;
sxL=0;
syL=0;
keyLeftTimer = 0;
keyRightTimer = 0;
keyUpTimer = 0;
keyDownTimer = 0;
keyCooldown = 0;

layer_create(0,"insMarkers");
layer_create(200,"insWalls");
layer_create(300,"insPlayer");
layer_create(350,"insCrates");
layer_create(400,"insGoals");
layer_create(500,"insWallsM");
layer_create(600,"insWire");

if global.playState=0
{
	scrLoadLevel();
}

if global.playState == 1 
{
	scrLoadLevel();
	instance_destroy();
}