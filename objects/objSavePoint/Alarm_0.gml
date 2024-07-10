/// @description actually save!
ds_map_secure_save(global.savedata,global.filename)
ds_map_secure_save(global.options,"Castlevania_Options.sav")
instance_create(x,y,objSavePopup)
