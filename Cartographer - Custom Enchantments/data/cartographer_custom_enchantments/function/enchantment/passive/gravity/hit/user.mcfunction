execute if entity @s[type=player] run playsound minecraft:item.mace.smash_air player @a[distance=..16] ~ ~ ~ 1 1.3
execute unless entity @s[type=player] run playsound minecraft:item.mace.smash_air hostile @a[distance=..16] ~ ~ ~ 1 1.3

scoreboard players operation $damage ca.gravity_var = @s ca.ench_gravity_lvl
scoreboard players operation $damage ca.gravity_var *= $10 ca.CONSTANT
scoreboard players operation $damage ca.gravity_var *= $2 ca.CONSTANT

scoreboard players set @s ca.gravity_time 20
function carto_event:api/create_single_entity_event {event:"custom_ench/gravity",duration:20,delay:0,parameters:{},merge_behavior:"none"}