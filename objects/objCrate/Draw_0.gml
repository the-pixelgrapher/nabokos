if global.playState = 1
{
	draw_sprite_ext(sprCrate,image_index,(x+xx)+ex,(y+yy)+ex,1,1,0,c_white,ea)
}
else {draw_sprite_ext(sprCrate,image_index,x+xx,y+yy,1,1,0,c_white,objLevelEdit.easep)}

xx=0;
yy=0;