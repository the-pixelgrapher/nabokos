xo=x;
yo=y;
alarm[0]=1;
spawn=instance_position(x,y,objWallMb);
image_speed=0;

sndPlayed1=0;
sndPlayed0=1;

	if !position_meeting(xo,yo, objWall) 
	{
		with instance_create_layer(xo-32,yo-32,"insMarkers",objWall)
		{
			visible=0;
		}
	}
	
	wall=instance_position(xo-32,yo-32,objWall);