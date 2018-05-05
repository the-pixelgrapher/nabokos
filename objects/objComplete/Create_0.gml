counter=0;
counter2=0;
amplify=48+16;
delay=60;
image_alpha=0;
global.reset=0;
if global.sound=1 {audio_play_sound(sndWin,1,0);}

if global.level="00" {global.L00=2; global.L01=1;}
if global.level="01" {global.L01=2; global.L02=1;}
if global.level="02" {global.L02=2; global.L03=1;}
if global.level="03" {global.L03=2; global.L04=1;}
if global.level="04" {global.L04=2; global.L05=1;}
if global.level="05" {global.L05=2; global.L06=1;}
if global.level="06" {global.L06=2; global.L07=1;}

