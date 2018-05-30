scrControl();
	
if activd == 0
{
	if keyLeftP == 1 or keyRightP == 1 or keyUpP == 1 or keyDownP == 1 {scrSound("tap");}
	
	if keyLeftP == 1 {col--;}
	if keyRightP == 1 {col++;}
	if keyUpP == 1 {row --;}
	if keyDownP == 1 {row ++;}
	
	row = clamp(row,0,7);
	col = clamp(col,0,11);
	
	sx = (col*64) + 128 + 32;
	sy = (row*64) + 128 + 32;
}

if keyActR == 1
{
	if !position_meeting(sx,sy,objWall)
	{
		instance_create_layer(sx-32,sy-32,"Instances",objWall);
	}
}