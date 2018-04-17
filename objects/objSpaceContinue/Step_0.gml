if counter<1 {counter+=1/30;}
y=ease("easeoutquart",counter)*amplify-amplify+672;
image_alpha=ease("easeoutcubic",counter*2)*1;