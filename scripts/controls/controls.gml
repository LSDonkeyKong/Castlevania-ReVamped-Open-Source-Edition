function scrControls()
{//controls
	kLeft = input_check("left");
	kRight= input_check("right");
	kUp= input_check("up");
	kDown= input_check("down");

	kAttack= input_check_pressed("attack"); kAttackHold= input_check("attack");
	kJump= input_check_pressed("jump");	kJumpRelease= input_check_released("jump");
	kSubweapon = input_check_pressed("subweapon");
	kDash = input_check("dash");
	
	kSwap = input_check_pressed("swap");
	
	kAimLock = input_check("aimlock");

	kAccept= input_check_pressed("accept");
	kCancel= input_check_pressed("cancel");
	kPause= input_check_pressed("pause"); kPauseHold= input_check("pause");
	kMap= input_check_pressed("map");

	//tapping, for menus
	kLeftTap = input_check_pressed("left");
	kRightTap = input_check_pressed("right");
	kUpTap = input_check_pressed("up");
	kDownTap = input_check_pressed("down");
}