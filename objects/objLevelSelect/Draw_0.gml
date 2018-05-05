draw_set_colour($545454);
draw_set_alpha(1);
draw_set_font(fntDIN3);
draw_set_valign(0);
draw_set_halign(1);
draw_text(512,128,"LEVEL SELECTION");

draw_set_colour($0DA5F2);
draw_line_width(334,192,691,192,2);


draw_set_valign(1);
draw_set_colour(c_white);
draw_set_font(fntDIN4);

if select=0								{draw_sprite(sprLevelSelectBack,2,128,288);}
else {if global.L00=0 or global.L00=1	{draw_sprite(sprLevelSelectBack,0,128,288);}
if global.L00=2							{draw_sprite(sprLevelSelectBack,1,128,288);}}
if global.L00=0							{draw_set_alpha(0.67);}
else									{draw_set_alpha(1);}
draw_text(128,289,"00");
draw_set_alpha(1);

if select=1								{draw_sprite(sprLevelSelectBack,2,256,288);}
else {if global.L01=0 or global.L01=1	{draw_sprite(sprLevelSelectBack,0,256,288);}
if global.L01=2							{draw_sprite(sprLevelSelectBack,1,256,288);}}
if global.L01=0							{draw_set_alpha(0.67);}
else									{draw_set_alpha(1);}
draw_text(256,289,"01");
draw_set_alpha(1);

if select=2								{draw_sprite(sprLevelSelectBack,2,384,288);}
else {if global.L02=0 or global.L02=1	{draw_sprite(sprLevelSelectBack,0,384,288);}
if global.L02=2							{draw_sprite(sprLevelSelectBack,1,384,288);}}
if global.L02=0							{draw_set_alpha(0.67);}
else									{draw_set_alpha(1);}
draw_text(384,289,"02");
draw_set_alpha(1);

if select=3								{draw_sprite(sprLevelSelectBack,2,512,288);}
else {if global.L03=0 or global.L03=1	{draw_sprite(sprLevelSelectBack,0,512,288);}
if global.L03=2							{draw_sprite(sprLevelSelectBack,1,512,288);}}
if global.L03=0							{draw_set_alpha(0.67);}
else									{draw_set_alpha(1);}
draw_text(512,289,"03");
draw_set_alpha(1);

if select=4								{draw_sprite(sprLevelSelectBack,2,640,288);}
else {if global.L04=0 or global.L04=1	{draw_sprite(sprLevelSelectBack,0,640,288);}
if global.L04=2							{draw_sprite(sprLevelSelectBack,1,640,288);}}
if global.L04=0							{draw_set_alpha(0.67);}
else									{draw_set_alpha(1);}
draw_text(640,289,"04");
draw_set_alpha(1);

if select=5								{draw_sprite(sprLevelSelectBack,2,768,288);}
else {if global.L05=0 or global.L05=1	{draw_sprite(sprLevelSelectBack,0,768,288);}
if global.L05=2							{draw_sprite(sprLevelSelectBack,1,768,288);}}
if global.L05=0							{draw_set_alpha(0.67);}
else									{draw_set_alpha(1);}
draw_text(768,289,"05");
draw_set_alpha(1);

if select=6								{draw_sprite(sprLevelSelectBack,2,896,288);}
else {if global.L06=0 or global.L06=1	{draw_sprite(sprLevelSelectBack,0,896,288);}
if global.L06=2							{draw_sprite(sprLevelSelectBack,1,896,288);}}
if global.L06=0							{draw_set_alpha(0.67);}
else									{draw_set_alpha(1);}
draw_text(896,289,"06");
draw_set_alpha(1);