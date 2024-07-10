/// @description i frames basically
if hit > 0
	hit -= 1
	
if hit/2 = round(hit/2)
	x = xstart + 1
else
	x = xstart
	
if hit = 55
	instance_create(x,y,objCardAdvicePopup)