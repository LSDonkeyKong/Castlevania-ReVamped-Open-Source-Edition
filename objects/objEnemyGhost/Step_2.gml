/// @description Ghost AI
//bat that goes thru walls
if i_frames < 2 && global.timestop/2 = round(global.timestop/2)
{
	scrDefyPhysics()
	
	face_player(0)
	
	if AI = HIDE
	{
		sprite_set(sprGhostHide,1)
		if abs(x - parPlayer.x) < eyesight && abs(parPlayer.y - y) < eyesight
			counter += 1
		if counter >= 60
		{
			AI = FLY 
			bitsound(sndBossRoar0)
		}
	}
	
	if AI = FLY
	{
		sprite_set(sprGhost,1)
		
		if image_xscale = 1 && xspeed < 2.5
			xspeed += 0.05
		if image_xscale = -1 && xspeed > -2.5
			xspeed -= 0.05
			
		if parPlayer.y > y && yspeed < 2.5
			yspeed += 0.05
			
		if parPlayer.y < y && yspeed > -2.5
			yspeed -= 0.05
			
		if abs(x - parPlayer.x) > eyesight && abs(parPlayer.y - y) > eyesight
			counter += 1
			
		if counter >= 120
			AI = HIDE
	}
}