if eDirection=1
{
	if place_meeting(x+64,y,objWireA) and !place_meeting(x+64,y,objElectron) 
	{instance_create_layer(x+64,y,"insMarkers",objElectron0);} //0

	if place_meeting(x-64,y,objWireA) and !place_meeting(x-64,y,objElectron) 
	{instance_create_layer(x-64,y,"insMarkers",objElectron180);} //180

	if place_meeting(x,y+64,objWireA) and !place_meeting(x,y+64,objElectron) 
	{instance_create_layer(x,y+64,"insMarkers",objElectron270);} //270

	if place_meeting(x,y-64,objWireA) and !place_meeting(x,y-64,objElectron) 
	{instance_create_layer(x,y-64,"insMarkers",objElectron90);} //90
}

if !place_meeting(x,y,objWireA) {instance_destroy()}
if place_meeting(x,y,objElectron){instance_destroy()}

life-=1;
if life<0 {instance_destroy();}


/*
for (i = 1; i < 5; i += 1)
{
	if i=1 {xx=64  yy=0   ed=0  }
	if i=2 {xx=-64 yy=0   ed=180}
	if i=3 {xx=0   yy=64  ed=270}
	if i=4 {xx=0   yy=-64 ed=90 } 
	
	if place_meeting(x+xx,y+yy,objWireA) and !place_meeting(x+xx,y+yy,objElectron) 
	{instance_create_layer(x+xx,y+yy,"insMarkers",objElectron)}
	instance_place(x+xx,y+yy,objElectron).eDirection=ed
}


if eDirection=1
{
	if place_meeting(x+64,y,objWireA) and !place_meeting(x+64,y,objElectron) 
	{instance_create_layer(x+64,y,"insMarkers",objElectron)}
	right=instance_place(x+64,y,objElectron)
	right.eDirection=0

	if place_meeting(x-64,y,objWireA) and !place_meeting(x-64,y,objElectron) 
	{instance_create_layer(x-64,y,"insMarkers",objElectron)}
	left=instance_place(x-64,y,objElectron)
	left.eDirection=180

	if place_meeting(x,y+64,objWireA) and !place_meeting(x,y+64,objElectron) 
	{instance_create_layer(x,y+64,"insMarkers",objElectron)}
	bottom=instance_place(x,y+64,objElectron)
	bottom.eDirection=270

	if place_meeting(x,y-64,objWireA) and !place_meeting(x,y-64,objElectron) 
	{instance_create_layer(x,y-64,"insMarkers",objElectron)}
	top=instance_place(x,y-64,objElectron)
	top.eDirection=90
}

if eDirection=0
{
	if place_meeting(x+64,y,objWireA) and !place_meeting(x+64,y,objElectron) 
	{instance_create_layer(x+64,y,"insMarkers",objElectron)}
	right=instance_place(x+64,y,objElectron)
	right.eDirection=0
	
	if place_meeting(x,y+64,objWireA) and !place_meeting(x,y+64,objElectron) 
	{instance_create_layer(x,y+64,"insMarkers",objElectron)}
	bottom=instance_place(x,y+64,objElectron)
	bottom.eDirection=270
	
	if place_meeting(x,y-64,objWireA) and !place_meeting(x,y-64,objElectron) 
	{instance_create_layer(x,y-64,"insMarkers",objElectron)}
	top=instance_place(x,y-64,objElectron)
	top.eDirection=90
}

if eDirection=180
{
	if place_meeting(x-64,y,objWireA) and !place_meeting(x-64,y,objElectron) 
	{instance_create_layer(x-64,y,"insMarkers",objElectron)}
	left=instance_place(x-64,y,objElectron)
	left.eDirection=180
	
	if place_meeting(x,y+64,objWireA) and !place_meeting(x,y+64,objElectron) 
	{instance_create_layer(x,y+64,"insMarkers",objElectron)}
	bottom=instance_place(x,y+64,objElectron)
	bottom.eDirection=270
	
	if place_meeting(x,y-64,objWireA) and !place_meeting(x,y-64,objElectron) 
	{instance_create_layer(x,y-64,"insMarkers",objElectron)}
	top=instance_place(x,y-64,objElectron)
	top.eDirection=90

}

if eDirection=270
{
	if place_meeting(x,y+64,objWireA) and !place_meeting(x,y+64,objElectron) 
	{instance_create_layer(x,y+64,"insMarkers",objElectron)}
	bottom=instance_place(x,y+64,objElectron)
	bottom.eDirection=270
	
	if place_meeting(x+64,y,objWireA) and !place_meeting(x+64,y,objElectron) 
	{instance_create_layer(x+64,y,"insMarkers",objElectron)}
	right=instance_place(x+64,y,objElectron)
	right.eDirection=0
	
	if place_meeting(x-64,y,objWireA) and !place_meeting(x-64,y,objElectron) 
	{instance_create_layer(x-64,y,"insMarkers",objElectron)}
	left=instance_place(x-64,y,objElectron)
	left.eDirection=180
}

if eDirection=90
{
	if place_meeting(x,y-64,objWireA) and !place_meeting(x,y-64,objElectron) 
	{instance_create_layer(x,y-64,"insMarkers",objElectron)}
	top=instance_place(x,y-64,objElectron)
	top.eDirection=90
	
	if place_meeting(x+64,y,objWireA) and !place_meeting(x+64,y,objElectron) 
	{instance_create_layer(x+64,y,"insMarkers",objElectron)}
	right=instance_place(x+64,y,objElectron)
	right.eDirection=0

	if place_meeting(x-64,y,objWireA) and !place_meeting(x-64,y,objElectron) 
	{instance_create_layer(x-64,y,"insMarkers",objElectron)}
	left=instance_place(x-64,y,objElectron)
	left.eDirection=180
}
*/