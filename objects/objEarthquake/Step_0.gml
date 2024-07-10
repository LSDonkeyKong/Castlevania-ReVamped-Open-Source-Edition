/// @description lerp
shakeAmount = lerp(shakeAmount, 0, 0.05);
cameraX = round( random_range(-shakeAmount,shakeAmount) );


//xview = camera_get_view_x(view_camera)
yview = camera_get_view_y(view_camera)

camera_set_view_speed(view_camera,0,storespeed)
camera_set_view_pos(view_camera,xview+cameraX,yview)