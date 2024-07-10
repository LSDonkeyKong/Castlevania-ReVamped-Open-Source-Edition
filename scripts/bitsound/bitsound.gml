function bitsound(sound)
{/// @function bitsound(sndID );
	audio_stop_sound(argument0)
	//audio_play_sound(argument0,1,false,global.volumeSFX)
	audio_play_sound(argument0,1,false,global.volumeSFX)
}

function bitfanfare(fanfare)
{/// @function bitfanfare(fanfareID );
	audio_pause_all()
	audio_play_sound(argument0,1,false,global.volumeBGM)
}

function bitBGM(BGM)
{///@function bitBGM(bgmID );
	//do not play boss music in boss rush
	if argument0 = bgmCreaturesInTheDepth && global.boss_rush
		exit;
	if argument0 = bgmNothingToLose && global.boss_rush
		exit;
	if argument0 = bgmYouGoddamnedBathead && global.boss_rush
		exit;
	//copy paste the rest of this to another game lol
	set_loop_points()
	if !audio_is_playing(argument0) && !audio_is_playing(bgmFanfarePlayerMiss)
	{
		audio_stop_all()
		audio_play_sound(argument0,1,true,global.volumeBGM)
	}
	if player_exists() = true
	{
		if global.timestop > 0
			audio_pause_sound(argument0)
		else
			audio_resume_sound(argument0)
	}
}

function bitloop(sound)
{/// @function bitsound(sndID );
	//audio_stop_sound(argument0)
	//audio_play_sound(argument0,1,false,global.volumeSFX)
	if !audio_is_playing(argument0)
		audio_play_sound(argument0,1,false,global.volumeSFX)
}

function set_loop_points()
{
	audio_sound_loop_start(bgmCastlevania, 7.444)
	audio_sound_loop_end(bgmCastlevania, 47.794)
	
	audio_sound_loop_start(bgmUnderground, 0.163)
	audio_sound_loop_end(bgmUnderground, 18.434)
	
	audio_sound_loop_start(bgmCreaturesInTheDepth, 0.714)
	audio_sound_loop_end(bgmCreaturesInTheDepth, 81.414 )
	
	audio_sound_loop_start(bgmEtudeForTheKiller, 10.265)
	audio_sound_loop_end(bgmEtudeForTheKiller, 149.304 )
	
	audio_sound_loop_start(bgmHeartOfFire, 7.504)
	audio_sound_loop_end(bgmHeartOfFire, 141.901)
	
	audio_sound_loop_start(bgmLoadBGM, 4.583)
	audio_sound_loop_end(bgmLoadBGM, 126.552)
	
	audio_sound_loop_start(bgmLullabySentToTheDevil, 0.044)
	audio_sound_loop_end(bgmLullabySentToTheDevil, 91.344)
	
	audio_sound_loop_start(bgmMoonFight, 0.098)
	audio_sound_loop_end(bgmMoonFight, 132.574)
	
	audio_sound_loop_start(bgmMotherEarth, 9.570)
	audio_sound_loop_end(bgmMotherEarth, 151.874)
	
	audio_sound_loop_start(bgmNothingToLose, 0.025)
	audio_sound_loop_end(bgmNothingToLose, 140.840)
	
	audio_sound_loop_start(bgmThemeOfSimon, 78.502)
	audio_sound_loop_end(bgmThemeOfSimon, 162.622)
	
	audio_sound_loop_start(bgmStalker, 0.026)
	audio_sound_loop_end(bgmStalker, 145.123)
	
	audio_sound_loop_start(bgmOutOfTime, 0.00)
	audio_sound_loop_end(bgmOutOfTime, 70.493)
	
	audio_sound_loop_start(bgmTowerOfDolls, 18.223)
	audio_sound_loop_end(bgmTowerOfDolls, 209.670)
	
	audio_sound_loop_start(bgmThrashardInTheCave, 18.373)
	audio_sound_loop_end(bgmThrashardInTheCave, 184.375)
	
	audio_sound_loop_start(bgmVampireKiller, 0.025)
	audio_sound_loop_end(bgmVampireKiller, 134.445)
	
	audio_sound_loop_start(bgmWalkingOnTheEdge, 6.425)
	audio_sound_loop_end(bgmWalkingOnTheEdge, 172.863)
	
	audio_sound_loop_start(bgmWickedChild, 22.696)
	audio_sound_loop_end(bgmWickedChild, 113.391)
	
	audio_sound_loop_start(bgmYouGoddamnedBathead, 8.946)
	audio_sound_loop_end(bgmYouGoddamnedBathead, 177.705)
	
	audio_sound_loop_start(bgmPlaybackWarningBGM, 7.415)
	audio_sound_loop_end(bgmPlaybackWarningBGM, 125.463)
}