global.reset=0;
scrSound("win");
counter=0;			//timer for easing function
amplify=64;			//multiplier for easing function
easea=0;			//easing for alpha
alarm[0]=60;		//delay before "space to continue"

//---- SAVE GAME STATE -----

for (var i = 0; i < 21; i++;)
{
	if global.level=i 
	{
		global.levelState[i]=2; //set current level as complete
		if i<20 and global.levelState[i+1]=0 {global.levelState[i+1]=1;} //set next level to unlocked
	}
}

scrSave();