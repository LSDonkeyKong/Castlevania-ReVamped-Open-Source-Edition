/// @description Gremlin AI
event_inherited();

sprite_set(sprGremlin,1)
if on_ground() = false
	sprite_set(sprGremlinJump,1)

//hop more frequently by adding extra values to the counter when idle
if AI = CHILL
{
	if abs(x - parPlayer.x) < eyesight
		counter += 1
}