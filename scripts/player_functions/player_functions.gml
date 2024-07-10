function scrPlayerSprites()
{
	if facing != -1
	{
		//basic sprites
		sIdle = sprSimonIdleR
		sDuck = sprSimonDuckR
		sWalk = sprSimonWalkR
		sJump = sprSimonJumpR 
		sHurt = sprSimonDamageR
		//abilities
		sSlide = sprSimonSlideR
		sWalljump = sprSimonWalljumpR
		sPound = sprSimonPoundR
		sDash = sprSimonDashR
		sDubble = sprSimonDubbleR
		//whip - ground
		sWhip = sprSimonWhipR
		sWhipDuck = sprSimonWhipDuckR
		sWhipUp = sprSimonWhipUpR
		sWhipUpDiag = sprSimonWhipUpDiagR
		//whip - jump
		sWhipJump = sprSimonWhipJumpR
		sWhipJumpUp = sprSimonWhipUpJumpR
		sWhipJumpUpDiag = sprSimonWhipUpDiagJumpR
		//whip - down
		sWhipDown = sprSimonWhipDownR
		sWhipDownDiag = sprSimonWhipDownDiagR
	}
	else
	{
		//basic sprites
		sIdle = sprSimonIdleL
		sDuck = sprSimonDuckL
		sWalk = sprSimonWalkL
		sJump = sprSimonJumpL 
		sHurt = sprSimonDamageL
		//abilities
		sSlide = sprSimonSlideL
		sWalljump = sprSimonWalljumpL
		sPound = sprSimonPoundL
		sDash = sprSimonDashL
		sDubble = sprSimonDubbleL
		//whip - ground
		sWhip = sprSimonWhipL
		sWhipDuck = sprSimonWhipDuckL
		sWhipUp = sprSimonWhipUpL
		sWhipUpDiag = sprSimonWhipUpDiagL
		//whip - jump
		sWhipJump = sprSimonWhipJumpL
		sWhipJumpUp = sprSimonWhipUpJumpL
		sWhipJumpUpDiag = sprSimonWhipUpDiagJumpL
		//whip - down
		sWhipDown = sprSimonWhipDownL
		sWhipDownDiag = sprSimonWhipDownDiagL
	}
}

function player_exists()
{
	if instance_number(parPlayer) > 0
		return true;
	if instance_number(parPlayer) = 0
		return false;
}

function get_upgrade(message_box_text)
{
	global.collection += 1
	global.needcheckmark = true
	global.message_box = argument0
	if !global.boss_rush
		bitfanfare(bgmFanfareItem)
	else
		bitsound(sndPickup1Up)
	instance_create(x,y,objMessageBox)
	collected()
	instance_destroy()
}