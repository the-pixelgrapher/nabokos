// ---- LEVEL NUMBER POPUP ANIMATION ----
if global.fadeMode="none" and levelNTimer>-61
{
	levelNTimer-=1;
	
	//entrance animation
	if levelNTimer>0
	{
		counter+=1/50;
		easey=ease("easeoutquint",counter)*amplify-34;
		easea=ease("easeinoutquad",counter*1.5);
	}
	
	//exit animation
	if levelNTimer<=0 or global.complete=1
	{
		if global.complete=1 
		{
			counter2+=1/30;
			easey=ease("easeoutquint",counter2)*amplify2+127-34;
		}
		else 
		{
			counter2+=1/50;
			easey=ease("easeinquint",counter2)*amplify2+127-34;
		}
		easea=1-ease("easeinoutcubic",counter2*1.33);
	}
}