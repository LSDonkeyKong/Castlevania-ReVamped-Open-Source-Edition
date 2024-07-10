/// @description setup
depth = -999999999
application_surface_enable(true);
screen_sprite = sprite_create_from_surface(application_surface, 0, 0, 400, 224, false, false, 0, 0);
deactivate()
instance_activate_object(objCamera)