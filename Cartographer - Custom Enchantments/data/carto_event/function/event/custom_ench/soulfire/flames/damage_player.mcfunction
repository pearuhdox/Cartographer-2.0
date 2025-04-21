scoreboard players set $muted_damage ca.ench_soulfire_lvl 0

summon small_fireball ~ ~ ~ {Tags:["ca.soulfire_fireball","ca.new"],acceleration_power:0.05d}

execute at @s as @e[type=small_fireball,limit=1,sort=nearest,tag=ca.soulfire_fireball,tag=ca.new] run function carto_event:event/custom_ench/soulfire/flames/damage_player_branch with storage carto_event current[-1].parameters

scoreboard players set $created_fireball ca.ench_soulfire_lvl 1

function carto_event:api/create_single_entity_event {event:"custom_ench/soulfire/cooldown",duration:40,delay:0,parameters:{},merge_behavior:"none"}