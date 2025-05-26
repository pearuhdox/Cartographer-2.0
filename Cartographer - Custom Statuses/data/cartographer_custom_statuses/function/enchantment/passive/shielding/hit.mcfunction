
execute store result score $has_abs ca.shielding_time run data get entity @s AbsorptionAmount 100


execute unless entity @s[type=player] unless score @s ca.shielding_state matches 1.. if score $has_abs ca.shielding_time matches 1.. unless score @s ca.shielding_time matches 1.. run playsound minecraft:entity.creaking.sway hostile @a[distance=..16] ~ ~ ~ 1.2 1.25
execute if entity @s[type=player] unless score @s ca.shielding_state matches 1.. if score $has_abs ca.shielding_time matches 1.. unless score @s ca.shielding_time matches 1.. run playsound minecraft:entity.creaking.sway player @s ~ ~ ~ 1 1.25
execute if score $has_abs ca.shielding_time matches 1.. run tag @s add ca.ench_shielding_has_abs
execute if score $has_abs ca.shielding_time matches 1.. run scoreboard players set @s ca.shielding_time 160
execute if score $has_abs ca.shielding_time matches 1.. run scoreboard players set @s ca.shielding_state 1
execute if score $has_abs ca.shielding_time matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_ench/shielding",duration:160,delay:0,parameters:{},merge_behavior:"merge"}

execute unless entity @s[type=player] unless score @s ca.shielding_state matches 2.. unless score $has_abs ca.shielding_time matches 1.. run playsound minecraft:entity.creaking.deactivate hostile @a[distance=..16] ~ ~ ~ 1 1.5
execute unless entity @s[type=player] unless score @s ca.shielding_state matches 2.. unless score $has_abs ca.shielding_time matches 1.. run particle minecraft:block{block_state:"minecraft:pale_oak_wood"} ~ ~0.75 ~ 0.15 0.35 0.15 0 8 normal
execute if entity @s[type=player] unless score @s ca.shielding_state matches 2.. unless score $has_abs ca.shielding_time matches 1.. run playsound minecraft:entity.creaking.deactivate player @s ~ ~ ~ 0.7 1.5

execute unless score $has_abs ca.shielding_time matches 1.. run scoreboard players set @s ca.shielding_time 320
execute unless score $has_abs ca.shielding_time matches 1.. run scoreboard players set @s ca.shielding_state 2
execute unless score $has_abs ca.shielding_time matches 1.. run effect clear @s absorption
execute unless score $has_abs ca.shielding_time matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_ench/shielding",duration:320,delay:0,parameters:{},merge_behavior:"merge"}
execute unless score $has_abs ca.shielding_time matches 1.. run tag @s remove ca.ench_shielding_has_abs