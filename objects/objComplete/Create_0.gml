global.reset=0;
scrSound("win");
counter=0;			//timer for easing function
amplify=64;			//multiplier for easing function
image_alpha=0;
alarm[0]=60;		//delay before "space to continue"
x=64;

//---- SAVE GAME STATE -----

for (var i = 0; i < 21; i++;)
{
	if global.level=i 
	{
		global.levelState[i]=2; //set current level as complete
		if i < room_last-5 and global.levelState[i+1]=0 {global.levelState[i+1]=1;} 
		//set next level to unlocked
	}
}

scrSave();