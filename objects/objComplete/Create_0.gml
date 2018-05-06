counter=0;
counter2=0;
amplify=64;
delay=60;
easea=0;
image_alpha=0;
global.reset=0;
if global.sound=1 {audio_play_sound(sndWin,1,0);}

if global.level="00" {global.L00=2; if global.L01=0 {global.L01=1;}}
if global.level="01" {global.L01=2; if global.L02=0 {global.L02=1;}}
if global.level="02" {global.L02=2; if global.L03=0 {global.L03=1;}}
if global.level="03" {global.L03=2; if global.L04=0 {global.L04=1;}}
if global.level="04" {global.L04=2; if global.L05=0 {global.L05=1;}}
if global.level="05" {global.L05=2; if global.L06=0 {global.L06=1;}}
if global.level="06" {global.L06=2; if global.L07=0 {global.L07=1;}}

scrSave();

