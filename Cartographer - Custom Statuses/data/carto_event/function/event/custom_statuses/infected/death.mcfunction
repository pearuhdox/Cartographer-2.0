data modify storage cartographer_custom_statuses:infected data set value {}
execute store result storage cartographer_custom_statuses:infected data.targets int 1 run scoreboard players get @s ca.infect_targets
execute store result storage cartographer_custom_statuses:infected data.range int 1 run scoreboard players get @s ca.infect_range
execute store result storage cartographer_custom_statuses:infected data.damage int 1 run scoreboard players get @s ca.infect_damage
execute store result storage cartographer_custom_statuses:infected data.death_dmg int 1 run scoreboard players get @s ca.infect_death_dmg
execute store result storage cartographer_custom_statuses:infected data.tick_rate int 1 run scoreboard players get @s ca.infect_tick_rate
execute store result storage cartographer_custom_statuses:infected data.duration int 1 run scoreboard players add @s ca.infect_duration 45

data modify storage cartographer_custom_statuses:infected data.owner set from storage ltos:main macro.killer


function carto_event:event/custom_statuses/infected/death_macro with storage cartographer_custom_statuses:infected data