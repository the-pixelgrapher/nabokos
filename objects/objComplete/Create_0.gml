global.reset=0;
scrSound("win");
counter=0;			//timer for easing function
amplify=64;			//multiplier for easing function
easea=0;			//easing for alpha
alarm[0]=60;		//delay before "space to continue"

//---- SAVE GAME STATE -----
if global.level="00" {global.levelState[0]=2; if global.levelState[1]=0 {global.levelState[1]=1;}}
if global.level="01" {global.levelState[1]=2; if global.levelState[2]=0 {global.levelState[2]=1;}}
if global.level="02" {global.levelState[2]=2; if global.levelState[3]=0 {global.levelState[3]=1;}}
if global.level="03" {global.levelState[3]=2; if global.levelState[4]=0 {global.levelState[4]=1;}}
if global.level="04" {global.levelState[4]=2; if global.levelState[5]=0 {global.levelState[5]=1;}}
if global.level="05" {global.levelState[5]=2; if global.levelState[6]=0 {global.levelState[6]=1;}}
if global.level="06" {global.levelState[6]=2; if global.levelState[7]=0 {global.levelState[7]=1;}}

scrSave();

