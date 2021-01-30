Msg("Initiating Sky Panic Event\n");

DirectorOptions <-
{
	PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	MobSpawnMinTime = 4
	MobSpawnMaxTime = 4
	MobMaxPending = 16
	MobMinSize = 16
	MobMaxSize = 16
	SustainPeakMinTime = 3
	SustainPeakMaxTime = 3
	IntensityRelaxThreshold = 0.90
	RelaxMinInterval = 4
	RelaxMaxInterval = 4
	RelaxMaxFlowTravel = 200
}

Director.ResetMobTimer()
Director.PlayMegaMobWarningSounds()