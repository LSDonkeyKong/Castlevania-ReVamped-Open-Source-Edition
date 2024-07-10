/// @description Grant munny
global.gold += bag
bitsound(sndPickupMoney)
with( instance_create_depth(x,y,0,objMoneyPopup) )
	bag = other.bag
	
instance_destroy()