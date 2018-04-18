if objDoor.state=1
{
	y=yo-64;
}

if objDoor.state=0 or objPlayer.resetTimer>=24 or global.fadeMode="outR"
{
	y=yo;
}