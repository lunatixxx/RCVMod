Msg("Underpass onslaught versus stript 1 intiated\n")

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = false
	
	//LockTempo = true
	MobSpawnMinTime = 8
	MobSpawnMaxTime = 12
	MobMinSize = 10
	MobMaxSize = 15
	MobMaxPending = 30
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 10
	IntensityRelaxThreshold = 0.8
	RelaxMinInterval = 1
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 50
	PreferredMobDirection = SPAWN_NO_PREFERENCE
	ZombieSpawnRange = 1500
}

Director.ResetMobTimer()
Director.PlayMegaMobWarningSounds()