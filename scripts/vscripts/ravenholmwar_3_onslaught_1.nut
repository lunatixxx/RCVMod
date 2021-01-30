Msg("Initiating Onslaught 1\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = true
	
	//LockTempo = true
	MobSpawnMinTime = 7
	MobSpawnMaxTime = 15
	MobMinSize = 15
	MobMaxSize = 25
	MobMaxPending = 30
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 10
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 3
	RelaxMaxInterval = 10
	RelaxMaxFlowTravel = 50
	SpecialRespawnInterval = 25
        SmokerLimit = 1
        JockeyLimit = 1
        BoomerLimit = 1
        HunterLimit = 1
        ChargerLimit = 1
	PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	ZombieSpawnRange = 2500
}

Director.ResetMobTimer()

