function cartographer_core:pldata/read

summon area_effect_cloud ~ ~1 ~ {Tags:["ca.charon_effect_mgr_reapply"],Particle:"block air",ReapplicationDelay:0,Radius:0.1f,RadiusOnUse:-5.0f,Duration:5,DurationOnUse:0,Age:-1,WaitTime:0,Potion:"minecraft:awkward",potion_contents:{custom_effects:[]}}
data modify entity @e[type=area_effect_cloud,tag=ca.charon_effect_mgr_reapply,limit=1,sort=nearest] potion_contents.custom_effects set from storage cartographer:player_data main.working_data.DeathRestoreEffects