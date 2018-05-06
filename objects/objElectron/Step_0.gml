if eDirection=1 //electron with no direction
{	//send electrons in all directions that contain a wire
	scrElectron(0);
	scrElectron(180);
	scrElectron(270);
	scrElectron(90);
	if position_meeting(x,y,objElectron){instance_destroy();}
}

if eDirection=0 //electron going right
{	//send electrons in all directions with wires except left
	scrElectron(0);
	scrElectron(270);
	scrElectron(90);
	if !position_meeting(x-64,y,objElectron) {instance_destroy();} //if source destroyed, destroy self
}

if eDirection=90 //electron going up
{	//send electrons in all directions with wires except down
	scrElectron(0);
	scrElectron(180);
	scrElectron(90);
	if !position_meeting(x,y+64,objElectron) {instance_destroy();} //if source destroyed, destroy self
}

if eDirection=180 //electron going left
{	//send electrons in all directions with wires except right
	scrElectron(180);
	scrElectron(270);
	scrElectron(90);
	if !position_meeting(x+64,y,objElectron) {instance_destroy();} //if source destroyed, destroy self
}

if eDirection=270
{	//send electrons in all directions with wires except up
	scrElectron(0);
	scrElectron(180);
	scrElectron(270);
	if !position_meeting(x,y-64,objElectron) {instance_destroy();} //if source destroyed, destroy self
}

if !position_meeting(x,y,objWireA) {instance_destroy();}

life-=1;
if life<0 {instance_destroy();} //electrons are destroyed after 1 step