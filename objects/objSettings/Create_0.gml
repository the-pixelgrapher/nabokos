/// @description GAME SETTINGS

//GAME SETTINGS
global.rotationMode=0;			//0 is auto rotation 1 is manual
global.lerpRot=1;				//animate rotation
global.stepMovement=0;			//singe step movement
global.invisCrates=0;			//invisible crates
audio_channel_num(32);			//max cocurrent sounds
global.sound=1;					//sound effects
global.music=1;					//background music
global.eVis=0;					//debug electron visibility

// GAME MECHANIC PARAMETERS
global.splashPlayed=0;
global.fadeMode="none";
global.reset=0;
global.aaSet=0;
global.wx=window_get_x();
global.wy=window_get_y();

// LEVEL PROGRESS DATA
scrLoad();
if global.levelState[0] = 1 
{
	global.showControls=1;		//show controls screen
}			
if global.levelState[0] = 2
{
	global.showControls=0;
}
global.cLevel = 0;

//GAME START
room_goto_next();