Msg("Initiating Onslaught 5\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = false
	
	//LockTempo = true
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 3
	MobMinSize = 30
	MobMaxSize = 30
	MobMaxPending = 30
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 10
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 1
	RelaxMaxInterval = 3
	RelaxMaxFlowTravel = 50
	SpecialRespawnInterval = 25
        SmokerLimit = 1
        JockeyLimit = 1
        BoomerLimit = 1
        HunterLimit = 1
        ChargerLimit = 1
	PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	ZombieSpawnRange = 1500
}

Director.ResetMobTimer()
