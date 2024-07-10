/// @description Water Blob AI
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	sprite_set(sprWaterBlob,1)
	scrDefyPhysics()
	
	{//ai step
		if ai_step >= 2 ai_step = 1
		if ai_step = 0 AI = HIDE
		if ai_step = 1 AI = BLOB
	}
	
	if AI = HIDE
	{
		xspeed = 0
		yspeed = 0
		x = - 64
		y = - 64
		
		if abs(parPlayer.x - xstart) < eyesight && abs(parPlayer.y - ystart) < 128
		{
			x = xstart
			y = ystart
			if !place_meeting(x,y,parWater)
				yspeed = -1 - random(3)
			else
				yspeed = 0
			bitsound(sndWaterSploosh)
			repeat(4) instance_create(x,y,objSploosh)
			ai_lap()
		}
	}
	
	if AI = BLOB
	{
		face_player(8)		
		if image_xscale = 1 && xspeed < 2
			xspeed += 0.05
		if image_xscale = -1 && xspeed > -2
			xspeed -= 0.05			
		if parPlayer.y > y && yspeed < 2
			yspeed += 0.05			
		if parPlayer.y < y && yspeed > -2
			yspeed -= 0.05
	}
}