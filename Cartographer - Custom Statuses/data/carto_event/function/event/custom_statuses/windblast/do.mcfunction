playsound minecraft:entity.breeze.shoot hostile @a[distance=..16] ~ ~ ~ 2 1.25

particle minecraft:gust ~ ~1 ~ 0 0 0 0 1 force

scoreboard players set @s ca.windblast_cdl 5

$execute as @e[type=#cartographer_core:affected_by_carto,distance=0.25..$(range),limit=$(targets)] at @s run function carto_event:event/custom_statuses/windblast/damage with storage cartographer_custom_statuses:windblast data

scoreboard players set $did_run ca.windblast_hp 1
