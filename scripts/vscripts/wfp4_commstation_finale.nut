PANIC 		<- 0
TANK 		<- 1
DELAY 		<- 2
ONSLAUGHT <- 3

TkCVcount <- 2

if ( Director.GetGameMode() == "versus" )
{
	TkCVcount <- 1
}


DirectorOptions <-
{
	D_CustomFinale_StageCount = 9

	D_CustomFinale1 		= ONSLAUGHT
	D_CustomFinaleValue1 	= "wf4s_c_onslaught"
	
	D_CustomFinale2 		= PANIC
	D_CustomFinaleValue2 	= 1	
	
	D_CustomFinale3 		= DELAY
	D_CustomFinaleValue3 	= 18
	
	D_CustomFinale4 		= TANK
	D_CustomFinaleValue4 	= 1
	
	D_CustomFinale5 		= DELAY
	D_CustomFinaleValue5 	= 12	
	
	D_CustomFinale6 		= PANIC
	D_CustomFinaleValue6 	= 2	
	
	D_CustomFinale7 		= DELAY
	D_CustomFinaleValue7 	= 18	
	
	D_CustomFinale8 		= TANK
	D_CustomFinaleValue8 	= TkCVcount
	
	D_CustomFinale9 		= DELAY
	D_CustomFinaleValue9 	= 6

	MobMinSize = 36
	MobMaxSize = 38
	MobMaxPending = 37
	
	CommonLimit = 38
	ShouldConstrainLargeVolumeSpawn = false
	PreferredMobDirection = SPAWN_LARGE_VOLUME
	PreferredSpecialDirection = SPAWN_LARGE_VOLUME

	ZombieSpawnRange = 3200	
	ShouldAllowSpecialsWithTank = true
	ShouldAllowMobsWithTank = false
	
	MaxSpecials = 4
	DominatorLimit = 4
	SpecialRespawnInterval = 20.0

	MusicDynamicMobSpawnSize = 25
}

