if load>=0
{
	if near.image_angle=000 {xx=+64; yy=+00;}
	if near.image_angle=090 {xx=+00; yy=-64;}
	if near.image_angle=180 {xx=-64; yy=+00;}
	if near.image_angle=270 {xx=+00; yy=+64;}
	load-=1;
}

if near.state=1
{
	x=xo+xx;
	y=yo+yy;
}
else
{
	x=xo;
	y=yo;
}
	