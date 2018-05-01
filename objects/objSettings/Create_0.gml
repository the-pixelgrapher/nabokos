/// @description GAME SETTINGS

//GAME SETTINGS
global.rotationMode=0;			//0 is auto rotation 1 is manual
global.stepMovement=0;			//singe step movement
audio_channel_num(32);			//max cocurrent sounds
global.sound=1;					//sound effects
//global.music=1;					//background music

// GAME MECHANIC PARAMETERS
global.splashPlayed=0;
global.fadeMode="none";
global.reset=0;

//GAME START
room_goto_next();