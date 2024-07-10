/// @description absorb it and set new special_id
if !absorbed
{
	item_id = other.object_index
	instance_destroy(other)
	absorbed = true
}