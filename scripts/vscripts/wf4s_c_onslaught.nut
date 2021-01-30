Msg("Initiating wf4 final Onslaught\n");

DirectorOptions <-
{
	CommonLimit = 18

	MobSpawnMinTime = 3
	MobSpawnMaxTime = 4
	MobMinSize = 16
	MobMaxSize = 18
	MobMaxPending = 17
	
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 10
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 3
	RelaxMaxInterval = 4

	PreferredMobDirection = SPAWN_LARGE_VOLUME
	PreferredSpecialDirection = SPAWN_LARGE_VOLUME
	ShouldConstrainLargeVolumeSpawn = true
	ZombieSpawnRange = 1000	
	
	MaxSpecials = 4
	DominatorLimit = 2
	SpecialRespawnInterval = 20.0
	
	MusicDynamicMobSpawnSize = 16

}

Director.ResetMobTimer()
Director.PlayMegaMobWarningSounds()

