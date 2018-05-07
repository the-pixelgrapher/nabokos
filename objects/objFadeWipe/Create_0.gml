counter=0;
amplify=-1024;
image_xscale=1024;
image_yscale=768;

if global.fadeMode="out" or global.fadeMode="outT" or global.fadeMode="outLN"
{
	x=1024;
	if global.fadeMode="outT" or global.fadeMode="outLN" {scrSound("start");}
	scrSound("trans");
}

if global.fadeMode="inR" or global.fadeMode="inM" or global.fadeMode="inLS"
{
	amplify=-768;
}

if global.fadeMode="outR" or global.fadeMode="outM" or global.fadeMode="outLS"
{
	y=-768;
	if global.fadeMode="outR" {global.reset=1;}
	amplify=768;
	scrSound("trans");
	if global.fadeMode="outR" {scrSound("error");}
}