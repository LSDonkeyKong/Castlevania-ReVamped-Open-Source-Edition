/// @description play area music
if global.boss_music = false && instance_number(objSimonDie) = 0 && global.area != 13
{
	if global.area = 0 bitBGM(bgmVampireKiller)
	if global.area = 1 bitBGM(bgmStalker)
	if global.area = 2 
	{//play lullaby if you're at the card seller, otherwise it's thrashard
		if room != undSalesChamber
			bitBGM(bgmThrashardInTheCave)
		else
			bitBGM(bgmLullabySentToTheDevil)
	}
	if global.area = 3 bitBGM(bgmWickedChild)
	if global.area = 4 bitBGM(bgmWalkingOnTheEdge)
	if global.area = 5 bitBGM(bgmLoadBGM)
	if global.area = 6 bitBGM(bgmMoonFight)
	if global.area = 7 bitBGM(bgmTowerOfDolls)
	if global.area = 8 bitBGM(bgmEtudeForTheKiller)
	if global.area = 9 bitBGM(bgmHeartOfFire)
	if global.area = 10
	{//play lullaby if you're at the card seller, otherwise it's oot
		if room != cloMarket
			bitBGM(bgmOutOfTime)
		else
			bitBGM(bgmLullabySentToTheDevil)
	}
	if global.area = 11 bitBGM(bgmThemeOfSimon)
	if global.area = 12 bitBGM(bgmSilence)
}
if global.area = 13 && instance_number(objSimonDie) = 0 && global.boss_rush
	bitBGM(bgmPlaybackWarningBGM)