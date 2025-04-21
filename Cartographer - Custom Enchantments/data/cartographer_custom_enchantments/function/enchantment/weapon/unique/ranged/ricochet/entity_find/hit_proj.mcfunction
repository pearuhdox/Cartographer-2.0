tag @s remove ca.allow_damage

execute store result score $piercing ca.ench_ricochet_lvl run data get entity @s weapon.components."minecraft:enchantments".minecraft:piercing
execute store result score $pierce_ct ca.ench_ricochet_lvl run data get entity @s PierceLevel
scoreboard players remove $pierce_ct ca.ench_ricochet_lvl 1
execute store result entity @s PierceLevel byte 1 run scoreboard players get $pierce_ct ca.ench_ricochet_lvl

execute if score $piercing ca.ench_ricochet_lvl matches 0 run kill @s

execute if score $piercing ca.ench_ricochet_lvl matches 1.. if score $pierce_ct ca.ench_ricochet_lvl matches 0 run kill @s