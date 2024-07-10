/// @description setup
scrControls()

application_surface_enable(true);
screen_sprite = sprite_create_from_surface(application_surface, 0, 0, 400, 224, false, false, 0, 0);

deactivate()

instance_create(x,y,objFadeInShutter)

whip_aim_string = "??????" + "\n"
morningstar_string = "??????" + "\n"
flame_whip_string = "??????" + "\n"
ice_whip_string = "??????" + "\n"
thunder_whip_string = "??????" + "\n"
dubble_jump_string = "??????" + "\n"
slide_string = "??????" + "\n"
walljump_string = "??????" + "\n"
water_armor_string = "??????" + "\n"
ground_pound_string = "??????" + "\n"
dash_string = "??????" + "\n"
super_slide_string = "??????" + "\n"

selection = 0

whips_string = 0
abilities_string = 0
boots_string = 0

description_string = 0

item_string = 0
enemy_string = 0
boss_string = 0
completion_string = 0

enemy = global.enemy_collection
boss = global.boss_collection

if enemy = undefined
	enemy = 0
if boss = undefined
	boss = 0