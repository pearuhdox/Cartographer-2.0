tag @s add ca.allow_flip

execute unless entity @s[type=#cartographer_core:potions] run tag @s add ca.allow_damage

execute unless score @s ca.attr_ranged_damage_total matches -1999999.. run scoreboard players set $damage ca.ench_ricochet_lvl 800
execute if score @s ca.attr_ranged_damage_total matches -1999999.. run scoreboard players set $damage ca.ench_ricochet_lvl 1
execute store result score $power ca.ench_ricochet_lvl run data get entity @s weapon.components."minecraft:enchantments".minecraft:power
scoreboard players operation $power ca.ench_ricochet_lvl *= $200 ca.CONSTANT
scoreboard players operation $damage ca.ench_ricochet_lvl += $power ca.ench_ricochet_lvl
execute store result storage cartographer_custom_enchantments:ricochet damage double 0.01 run scoreboard players get $damage ca.ench_ricochet_lvl

scoreboard players set $hit ca.ench_ricochet_lvl 0
function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/entity_find/raycast with storage cartographer_custom_enchantments:ricochet

scoreboard players set @s ca.raycast 15

function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/find_block_face/raycast with storage cartographer_custom_enchantments:ricochet