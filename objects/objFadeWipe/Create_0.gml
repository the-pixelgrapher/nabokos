counter=0;
amplify=-1024;
image_xscale=1024;
image_yscale=768;

if global.fadeMode="out" or global.fadeMode="outT" or global.fadeMode="outLN"
{
	x=1024;
	y=0;
	if global.fadeMode="outT" or room = 2 {scrSound("start");}
	scrSound("trans");
}

if global.fadeMode="inR" or global.fadeMode="inLS"
{
	amplify=-768;
}

if global.fadeMode="outR" or global.fadeMode="outM" or global.fadeMode="outLS"
{
	x=0;
	y=-768;
	if global.fadeMode="outR" {global.reset=1;}
	amplify=768;
	scrSound("trans");
	if global.fadeMode="outR" {scrSound("error");}
}