execute store result score $has_abs ca.shielding_time run data get entity @s AbsorptionAmount 10

execute if score $has_abs ca.shielding_time matches 1.. run tag @s add ca.ench_shielding_has_abs
execute if score $has_abs ca.shielding_time matches 1.. run scoreboard players set @s ca.shielding_time 160
execute if score $has_abs ca.shielding_time matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_ench/shielding",duration:160,delay:000,parameters:{},merge_behavior:"merge"}

execute unless score $has_abs ca.shielding_time matches 1.. run scoreboard players set @s ca.shielding_time 320
execute unless score $has_abs ca.shielding_time matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_ench/shielding",duration:320,delay:000,parameters:{},merge_behavior:"merge"}
execute unless score $has_abs ca.shielding_time matches 1.. if entity @s[type=player] if entity @s[tag=ca.ench_shielding_has_abs] run playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 0.35 1.75
execute unless score $has_abs ca.shielding_time matches 1.. unless entity @s[type=player] if entity @s[tag=ca.ench_shielding_has_abs] run playsound minecraft:block.respawn_anchor.deplete hostile @a[distance=..12] ~ ~ ~ 0.75 1.75
execute unless score $has_abs ca.shielding_time matches 1.. run tag @s remove ca.ench_shielding_has_abs
