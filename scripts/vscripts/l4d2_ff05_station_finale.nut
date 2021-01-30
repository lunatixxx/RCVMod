//-----------------------------------------------------
ERROR		<- -1
PANIC 		<- 0
TANK 		<- 1
DELAY 		<- 2
SCRIPTED 	<- 3

//-----------------------------------------------------

// Locals
StageDelay <- 0
PreEscapeDelay <- 0

// Campaign Mode
if ( Director.GetGameMode() == "coop" )
{
   PreEscapeDelay <- 5
	StageDelay <- 5
}

// Versus Mode
else if ( Director.GetGameMode() == "versus" )
{
   PreEscapeDelay <- 15
	StageDelay <- 10
}

PanicOptions <-
// DirectorOptions when in a PANIC stage
{

	MobMaxPending = 30
	MegaMobMinSize = 35
	MegaMobMaxSize = 45
	SustainPeakMinTime = 30
	SustainPeakMaxTime = 40
	CommonLimit = 35
}

TankOptions <-
// DirectorOptions when in a TANK stage
{
	ShouldAllowMobsWithTank = true
	ShouldAllowSpecialsWithTank = true
 
	MobSpawnMinTime = 10
	MobSpawnMaxTime = 15
	MobMinSize = 5
	MobMaxSize = 10
 
	CommonLimit = 20
}


DirectorOptions <-
{	
	A_CustomFinale_StageCount = 27
	 
	A_CustomFinale1 		= SCRIPTED
	A_CustomFinaleValue1 	= "l4d2_ff05_coopfinale_stage1"
	A_CustomFinale2 		= DELAY
	A_CustomFinaleValue2 	= 0
	A_CustomFinale3 		= SCRIPTED
	A_CustomFinaleValue3 	= "l4d2_ff05_coopfinale_stage2"
	A_CustomFinale4 		= DELAY
	A_CustomFinaleValue4 	= 0
	A_CustomFinale5 		= SCRIPTED
	A_CustomFinaleValue5 	= "l4d2_ff05_coopfinale_stage3"
	A_CustomFinale6 		= DELAY
	A_CustomFinaleValue6 	= 0
	A_CustomFinale7 		= SCRIPTED
	A_CustomFinaleValue7 	= "l4d2_ff05_coopfinale_stage4"
	A_CustomFinale8 		= DELAY
	A_CustomFinaleValue8 	= 0
	A_CustomFinale9 		= SCRIPTED
	A_CustomFinaleValue9 	= "l4d2_ff05_coopfinale_stage5"
	A_CustomFinale10 		= DELAY
	A_CustomFinaleValue10 	= 0
	A_CustomFinale11 		= SCRIPTED
	A_CustomFinaleValue11 	= "l4d2_ff05_coopfinale_stage6"
	A_CustomFinale12 		= DELAY
	A_CustomFinaleValue12 	= 0
	A_CustomFinale13 		= SCRIPTED
	A_CustomFinaleValue13 	= "l4d2_ff05_coopfinale_stage7"
	A_CustomFinale14 		= DELAY
	A_CustomFinaleValue14 	= 13
	A_CustomFinale15 		= DELAY
	A_CustomFinaleValue15 	= 10
	A_CustomFinale16 		= PANIC
	A_CustomFinaleValue16 	= 2
	A_CustomFinale17		= DELAY
	A_CustomFinaleValue17	= 7
	A_CustomFinale18 		= PANIC
	A_CustomFinaleValue18 	= 1
	A_CustomFinale19 		= DELAY
	A_CustomFinaleValue19 	= StageDelay
	A_CustomFinale20 		= TANK
	A_CustomFinaleValue20 	= 1
	A_CustomFinale21 		= DELAY
	A_CustomFinaleValue21 	= 10
	A_CustomFinale22		= PANIC
	A_CustomFinaleValue22	= 2
	A_CustomFinale23		= DELAY
	A_CustomFinaleValue23	= 7
	A_CustomFinale24		= PANIC
	A_CustomFinaleValue24	= 1
	A_CustomFinale25		= DELAY
	A_CustomFinaleValue25	= StageDelay
	A_CustomFinale26		= TANK
	A_CustomFinaleValue26	= 2
	A_CustomFinale27		= DELAY
	A_CustomFinaleValue27	= PreEscapeDelay
	
	TankLimit = 2
	WitchLimit = 0
	HordeEscapeCommonLimit = 10
	EscapeSpawnTanks = false
	
	PreferredMobDirection = SPAWN_LARGE_VOLUME
	PreferredSpecialDirection = SPAWN_LARGE_VOLUME
	ShouldConstrainLargeVolumeSpawn = false
	
	ZombieSpawnRange = 1600
	SpecialRespawnInterval = 20
}

function OnBeginCustomFinaleStage( num, type )
{
   // Scavenge portion is over
	if( num == 14 )
	{
		EntFire( "relay_finale_continue" "Trigger" );
	}
   
   // Holdout 25% done
	else if( num == 17 )
	{
		EntFire( "to_25battery_case" "PickRandom" );
	}
   
   // Holdout 50% done
	else if( num == 21 )
	{
		EntFire( "to_firsttankdead_case" "PickRandom" );
	}
   
   // Holdout 75% done
	else if( num == 23 )
	{
		EntFire( "to_75battery_case" "PickRandom" );
	}
}

