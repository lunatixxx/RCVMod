Msg("Underpass onslaught versus script 2 intiated\n")

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = false
	
	//LockTempo = true
	MobSpawnMinTime = 3
	MobSpawnMaxTime = 7
	MobMinSize = 10
	MobMaxSize = 18
	MobMaxPending = 25
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 10
	IntensityRelaxThreshold = 0.8
	RelaxMinInterval = 1
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 500
	PreferredMobDirection = SPAWN_ABOVE_SURVIVORS
	ZombieSpawnRange = 1500
}

Director.ResetMobTimer()
