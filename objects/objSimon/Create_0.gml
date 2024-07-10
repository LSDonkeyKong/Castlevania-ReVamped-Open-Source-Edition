/// @description player setup
scrPhysicsInit()
reset_palette()
if instance_number(objPlayerStalker) == 0
	instance_create(x,y,objPlayerStalker)

global.richard = false

sploosh = false
hazard_damage = false
safe_x = 0
safe_y = 0
cling = 0
clinging = false

//constant physics
yspeed_accel = 0

//general movement
facing = 1
walk_accel = 0
walk_deccel = 0
walkspeed = 1 //avoid divide by zero in draw event
jumpspeed = 0
fallspeed = 0

//physics for upgrades
wallspeed = 0
slidespeed = 0
dashspeed = 0
poundspeed = 0
pound_accel = 0

//conditions
can_control = false
in_water = false
water_factor = 0.75
duck_factor = 0.5
hurting = false
hurt_time = 0
i_frames = 0
ducking = false
attacking = false
whipping = false
sliding = false
dashing = false
dash_counter = 0
pounding = false
pound_counter = 0
dubble_jumped = false
shortjump_factor = 0.5
on_wall = false
trail_counter = 0
pace_counter = 0

//whip aim stuff
aim_dir = 0
	FORWARD = 0
	UP = 1
	UP_DIAG = 2
	DOWN = 3
	DOWN_DIAG = 4
whip_frames = 15
whip_out = false
whip_counter = 0
flame_counter = 0