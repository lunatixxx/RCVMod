Msg("Initiating Onslaught 2\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = true
	
	//LockTempo = true
	MobSpawnMinTime = 5
	MobSpawnMaxTime = 10
	MobMinSize = 20
	MobMaxSize = 30
	MobMaxPending = 30
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 10
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 2
	RelaxMaxInterval = 7
	RelaxMaxFlowTravel = 50
	SpecialRespawnInterval = 25
        SmokerLimit = 1
        JockeyLimit = 1
        BoomerLimit = 1
        HunterLimit = 1
        ChargerLimit = 1
	PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	ZombieSpawnRange = 2000
}

Director.ResetMobTimer()

