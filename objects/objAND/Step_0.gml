if global.playState=1
{

var state=0

// XOR LOGIC
if alarm[0]=-1 and global.playState=1
{
	if position_meeting(x+xx,y+yy,objWireA) and position_meeting(x-xx,y-yy,objWireA)
	{
		state = (nearA.state*nearB.state)
	}
}

if state=1
{
	instance_create_layer(x+yy,y+xx,"insMarkers", objElectron);
}

image_index=state;

}