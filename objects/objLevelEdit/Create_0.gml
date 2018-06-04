global.playState=0;

activd=0;
row=0;
col=0;
iSelect=1;
filled=0;
irot=0;
irotT=0;
irotL=0;
savedTimer=0;
soundTimer=0;
sx=128+32;
sy=128+32;

layer_create(0,"insMarkers");
layer_create(200,"insWalls");
layer_create(300,"insPlayer");
layer_create(350,"insCrates");
layer_create(400,"insGoals");
layer_create(500,"insWallsM");
layer_create(600,"insWire");