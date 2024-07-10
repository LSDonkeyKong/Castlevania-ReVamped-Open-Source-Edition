/// @description Killer Mirror AI
if active
{
event_inherited();
if AI = CHILL
	ai_lap()
}

if abs(parPlayer.x - x) < eyesight
	active = true

sprite_index = sprKillerMirror

flavor = 3 
yspeed_accel = 0.1 + ( 0.1 * flavor )
