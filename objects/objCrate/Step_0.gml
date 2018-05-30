if place_snapped(32,32) and !place_snapped(64,32) and !place_snapped(32,64)
{	
	speed=0
}

// crate attaches to player magnet
if position_meeting(x-64,y,objPlayer) and objPlayer.rot=0 and objPlayer.magState=1
{
	if objPlayer.direction=180 and !place_meeting(x-128,y,objSolid)
	{
		speed=objPlayer.speed;
		direction=180
	}
	xx=-1*m;
}

if position_meeting(x,y+64,objPlayer) and objPlayer.rot=90 and objPlayer.magState=1 
{
	if objPlayer.direction=270 and !place_meeting(x,y+128,objSolid)
	{
		speed=objPlayer.speed;
		direction=270
	}
	yy=1*m;
}

if position_meeting(x+64,y,objPlayer) and objPlayer.rot=180 and objPlayer.magState=1
{
	if objPlayer.direction=0 and !place_meeting(x+128,y,objSolid)
	{
		speed=objPlayer.speed;
		direction=0
	}
	xx=1*m;
}

if position_meeting(x,y-64,objPlayer) and objPlayer.rot=270 and objPlayer.magState=1
{
	if objPlayer.direction=90 and !place_meeting(x,y-128,objSolid)
	{
		speed=objPlayer.speed;
		direction=90
	}
	yy=-1*m;
}

image_index=position_meeting(x,y,objGoal); //sprite changes when on goal