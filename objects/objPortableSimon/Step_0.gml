/// @description move baby
scrControls()
scrDefyPhysics()

if kLeft && xspeed > -4
	xspeed -= 0.5
	
if kRight && xspeed < 4
	xspeed += 0.5
	
if !kLeft && !kRight
	xspeed = 0
	
if kUp && yspeed > -4
	yspeed -= 0.5
	
if kDown && yspeed < 4
	yspeed += 0.5
	
if !kUp && !kDown
	yspeed = 0
	
if kCancel
	instance_change(objSimon,true)