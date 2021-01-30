Msg("Initiating Sky Panic Event\n");

DirectorOptions <-
{
	PreferredMobDirection = SPAWN_ANYWHERE
	MobSpawnMinTime = 2
	MobSpawnMaxTime = 4
	MobMaxPending = 16
	MobMinSize = 16
	MobMaxSize = 16
	SustainPeakMinTime = 2
	SustainPeakMaxTime = 3
	IntensityRelaxThreshold = 0.90
	RelaxMinInterval = 3
	RelaxMaxInterval = 3
	RelaxMaxFlowTravel = 200
}

Director.ResetMobTimer()
Director.PlayMegaMobWarningSounds()