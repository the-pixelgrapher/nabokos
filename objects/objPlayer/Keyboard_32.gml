/// @description delayed reset

if global.complete=0 and !instance_exists(objFadeWipe) and levelNTimer<=-30
{
	resetTimer+=1;
}