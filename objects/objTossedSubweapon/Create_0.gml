/// @description setup
tossed = 0
flash = 0
counter = 0
reset_palette()
scrPhysicsInit()
yspeed_accel = 0.2
yspeed = -3

if player_exists() = true
{
	xspeed = -parPlayer.facing * 3
}