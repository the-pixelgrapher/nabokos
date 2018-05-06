if place_snapped(32,32) and !place_snapped(64,32) and !place_snapped(32,64)
{	
	speed=0
}

// crate attaches to player magnet
if position_meeting(x-64,y,objPlayer) and objPlayer.direction=180 and objPlayer.rotT=0
and objPlayer.magState=1 and !place_meeting(x-128,y,objWall)
{
	speed=objPlayer.speed;
	direction=objPlayer.direction;
}

if position_meeting(x,y+64,objPlayer) and objPlayer.direction=270 and objPlayer.rotT=90
and objPlayer.magState=1 and !place_meeting(x,y+128,objWall)
{
	speed=objPlayer.speed;
	direction=objPlayer.direction;
}

if position_meeting(x+64,y,objPlayer) and objPlayer.direction=0 and objPlayer.rotT=180
and objPlayer.magState=1 and !place_meeting(x+128,y,objWall)
{
	speed=objPlayer.speed;
	direction=objPlayer.direction;
}

if position_meeting(x,y-64,objPlayer) and objPlayer.direction=90 and objPlayer.rotT=270
and objPlayer.magState=1 and !place_meeting(x,y-128,objWall)
{
	speed=objPlayer.speed;
	direction=objPlayer.direction;
}

image_index=position_meeting(x,y,objGoal); //sprite changes when on goal