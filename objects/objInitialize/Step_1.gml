/// @description CRT
if instance_number(objCRTFilter) = 0
	instance_create(-128,-128,objCRTFilter)
if !global.crt
	global.oldtvfilter_enabled = false
else
	global.oldtvfilter_enabled = true