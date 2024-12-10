attribute @s minecraft:follow_range modifier remove ca.asleep_follow_range
attribute @s minecraft:movement_speed modifier remove ca.asleep_speed
attribute @s minecraft:attack_damage modifier remove ca.asleep_damage

playsound minecraft:entity.llama.spit hostile @a[distance=..16] ~ ~ ~ 0.5 1
execute anchored eyes positioned ^ ^ ^ run particle minecraft:sneeze ~ ~ ~ 0.2 0 0.2 0.05 10 normal

scoreboard players set $asleep_remove ca.asleep_var 1

tag @s remove ca.has_custom_status_asleep
scoreboard players set @s ca.asleep_time 0