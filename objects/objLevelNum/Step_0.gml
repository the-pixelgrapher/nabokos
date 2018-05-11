// ---- LEVEL NUMBER POPUP ANIMATION ----
if global.fadeMode="none" and levelNTimer>-31
{
	levelNTimer-=1;
	
	if levelNTimer>0
	{
		counter+=1/30;
		easey=ease("easeoutquart",counter)*amplify-34;
		easea=ease("easeinoutquad",counter*1.5);
	}
	
	if levelNTimer<=0 or global.complete=1
	{
		counter2+=1/30;
		easey=ease("easeoutquart",counter2)*amplify2+127-34;
		easea=1-ease("easeinoutquad",counter2*1.5);
	}
}