if eDirection=1 //electron with no direction
{	//send electrons in all directions that contain a wire
	
	if position_meeting(x+64,y,objWireA) and !position_meeting(x+64,y,objElectron) 
	{with instance_create_layer(x+64,y,"insMarkers",objElectron) {eDirection=0;}}

	if position_meeting(x-64,y,objWireA) and !position_meeting(x-64,y,objElectron) 
	{with instance_create_layer(x-64,y,"insMarkers",objElectron) {eDirection=180;}}

	if position_meeting(x,y+64,objWireA) and !position_meeting(x,y+64,objElectron) 
	{with instance_create_layer(x,y+64,"insMarkers",objElectron) {eDirection=270;}}

	if position_meeting(x,y-64,objWireA) and !position_meeting(x,y-64,objElectron) 
	{with instance_create_layer(x,y-64,"insMarkers",objElectron) {eDirection=90;}}
	
	if position_meeting(x,y,objElectron){instance_destroy();}
}

if eDirection=0 //electron going right
{	//send electrons in all directions with wires except left
	
	if position_meeting(x+64,y,objWireA) and !position_meeting(x+64,y,objElectron) 
	{with instance_create_layer(x+64,y,"insMarkers",objElectron) {eDirection=0;}}

	if position_meeting(x,y+64,objWireA) and !position_meeting(x,y+64,objElectron) 
	{with instance_create_layer(x,y+64,"insMarkers",objElectron) {eDirection=270;}}

	if position_meeting(x,y-64,objWireA) and !position_meeting(x,y-64,objElectron) 
	{with instance_create_layer(x,y-64,"insMarkers",objElectron) {eDirection=90;}}
	
	if !position_meeting(x-64,y,objElectron) {instance_destroy();} //if source destroyed, destroy self
}


if eDirection=90 //electron going up
{	//send electrons in all directions with wires except down
	
	if position_meeting(x+64,y,objWireA) and !position_meeting(x+64,y,objElectron) 
	{with instance_create_layer(x+64,y,"insMarkers",objElectron) {eDirection=0;}}

	if position_meeting(x-64,y,objWireA) and !position_meeting(x-64,y,objElectron) 
	{with instance_create_layer(x-64,y,"insMarkers",objElectron) {eDirection=180;}}

	if position_meeting(x,y-64,objWireA) and !position_meeting(x,y-64,objElectron) 
	{with instance_create_layer(x,y-64,"insMarkers",objElectron) {eDirection=90;}}
	
	if !position_meeting(x,y+64,objElectron) {instance_destroy();} //if source destroyed, destroy self
}


if eDirection=180 //electron going left
{	//send electrons in all directions with wires except right
	
	if position_meeting(x-64,y,objWireA) and !position_meeting(x-64,y,objElectron) 
	{with instance_create_layer(x-64,y,"insMarkers",objElectron) {eDirection=180;}}

	if position_meeting(x,y+64,objWireA) and !position_meeting(x,y+64,objElectron) 
	{with instance_create_layer(x,y+64,"insMarkers",objElectron) {eDirection=270;}}

	if position_meeting(x,y-64,objWireA) and !position_meeting(x,y-64,objElectron) 
	{with instance_create_layer(x,y-64,"insMarkers",objElectron) {eDirection=90;}}
	
	if !position_meeting(x+64,y,objElectron) {instance_destroy();} //if source destroyed, destroy self
}

if eDirection=270
{	//send electrons in all directions with wires except up
	
	if position_meeting(x+64,y,objWireA) and !position_meeting(x+64,y,objElectron) 
	{with instance_create_layer(x+64,y,"insMarkers",objElectron) {eDirection=0;}}

	if position_meeting(x-64,y,objWireA) and !position_meeting(x-64,y,objElectron) 
	{with instance_create_layer(x-64,y,"insMarkers",objElectron) {eDirection=180;}}

	if position_meeting(x,y+64,objWireA) and !position_meeting(x,y+64,objElectron) 
	{with instance_create_layer(x,y+64,"insMarkers",objElectron) {eDirection=270;}}
	
	if !position_meeting(x,y-64,objElectron) {instance_destroy();} //if source destroyed, destroy self
}

if !position_meeting(x,y,objWireA) {instance_destroy();}

life-=1;
if life<0 {instance_destroy();} //electrons are destroyed after 1 step